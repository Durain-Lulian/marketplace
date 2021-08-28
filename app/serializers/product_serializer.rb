
class ProductSerializer
    include JSONAPI::Serializer

    attributes :name, :image, :cashback_percentage, :price 

    attribute :rating do |product|
        product.rating.round(2)
    end
end