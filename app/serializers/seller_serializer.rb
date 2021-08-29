
class SellerSerializer
    include JSONAPI::Serializer

    attributes :name, :image_url, :slug, :category, :description

    attribute :max_cashback do |seller| 
        product_cashback = seller.products.pluck(:cashback_percentage)

        product_cashback.max
    end

    attribute :products do |seller|
        items = seller.products.order(cashback_percentage: :desc)

        serializer = ProductSerializer.new(items, { fields: { product: [:name, :image, :slug, :cashback_percentage, :price, :rating] } })

        serializer.serializable_hash
    end

    attribute :rating do |seller|
        seller.rating.round(2)
    end
end
