
class ShoppingCartSerializer
    include JSONAPI::Serializer

    attribute :total_price do |cart|
        shopping_cart_products = cart.shopping_cart_products

        sum = 0
        shopping_cart_products.each do |scp|
            sum += scp.total_price
        end
        sum
    end

    attribute :shopping_cart_products do |cart|
        shopping_cart_products = cart.shopping_cart_products

        serializer = ShoppingCartProductSerializer.new(shopping_cart_products)

        serializer.serializable_hash
    end

    attribute :number_of_products do |cart|
        shopping_cart_products = cart.shopping_cart_products
        
        sum = 0
        shopping_cart_products.each do |scp|
            sum += scp.quantity
        end
        sum
    end
end