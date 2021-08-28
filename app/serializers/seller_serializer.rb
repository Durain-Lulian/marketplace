
class SellerSerializer
    include JSONAPI::Serializer

    attributes :name, :image_url, :slug

    attribute :max_cashback do |seller| 
        product_cashback = seller.products.pluck(:cashback_percentage)

        product_cashback.max
    end

    attribute :products do |seller|
        items = seller.products.order(cashback_percentage: :desc)

        serializer = ProductSerializer.new(items)

        serializer.serializable_hash
    end
end
