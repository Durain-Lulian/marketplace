
class SellerSerializer
    include JSONAPI::Serializer

    attributes :name, :image_url, :slug

    attribute :max_cashback do |seller| 
        product_cashback = seller.products.pluck(:cashback_percentage)

        product_cashback.max
    end

    attribute :top_deals do |seller|
        "awl;djtfh"
    end
end
