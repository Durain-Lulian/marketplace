
class SellerSerializer
    include JSONAPI::Serializer

    attributes :name, :image_url

    attribute :max_cashback do |seller| 
        product_cashback = seller.products.pluck(:cashback_percentage)

        product_cashback.max
    end
end