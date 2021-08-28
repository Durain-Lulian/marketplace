
class ShoppingCartProductSerializer
    include JSONAPI::Serializer

    attributes :product_id, :quantity
end