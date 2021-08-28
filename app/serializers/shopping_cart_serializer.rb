
class ShoppingCartSerializer
    include JSONAPI::Serializer

    attribute :shopping_cart_products do |cart|
        shopping_cart_products = cart.shopping_cart_products

        serializer = ShoppingCartProductSerializer.new(shopping_cart_products)

        serializer.serializable_hash
    end
end