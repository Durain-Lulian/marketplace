
class ShoppingCartProductSerializer
    include JSONAPI::Serializer

    attributes :product_id, :quantity

    attributes :total_price do |scp| 
        scp.total_price
    end
end