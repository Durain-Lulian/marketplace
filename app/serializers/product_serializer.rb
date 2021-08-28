
class ProductSerializer
    include JSONAPI::Serializer

    attributes :name, :image, :cashback_percentage, :price, :description

    attribute :rating do |product|
        product.rating.round(2)
    end

    attribute :shop do |product|
        seller = product.seller

        serializer = SellerSerializer.new(seller, { fields: { seller: [:name, :slug] } })

        serializer.serializable_hash
    end

    attribute :number_sold do |product|
        receipts_product_quantities = ReceiptProduct.where(product: product).pluck(:quantity)        
        receipts_product_quantities.sum
    end
end