class CartController < ApplicationController
    def add
        user_id = params[:user_id]
        product_id = params[:product_id]
        quantity = params[:quantity]

        user = User.find_by(id: user_id)
        product = Product.find_by(id: product_id)
        # error handler 
        shopping_cart = user.shopping_cart
        
        shopping_cart_product = ShoppingCartProduct.create(shopping_cart: shopping_cart, product: product, quantity: quantity)

        render json: { shopping_cart: user.shopping_cart}, status: 200
    end
end