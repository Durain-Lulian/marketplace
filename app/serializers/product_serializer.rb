
class ProductSerializer
    include JSONAPI::Serializer

    attributes :name, :image, :cashback_percentage, :price 

    attribute :rating do |product|
        product.rating.round(2)
    end

    attribute :shop do |product|
        seller = product.seller

        serializer = SellerSerializer.new(seller, { fields: { seller: [:name, :slug] } })

        serializer.serializable_hash
    end
end