
class ReceiptProductSerializer
    include JSONAPI::Serializer

    attributes :product_id, :quantity

    attribute :price do |rp|
        rp.product.price
    end

    attributes :total_price do |rp| 
        rp.total_price
    end

    attributes :image do |rp| 
        rp.product.image
    end
end