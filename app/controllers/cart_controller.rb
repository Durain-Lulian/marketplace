class CartController < ApplicationController
    def get
        user_id = params[:user_id]
        user = User.find_by(id: user_id)
        serializer = ShoppingCartSerializer.new(user.shopping_cart)
        render json: serializer.serializable_hash , status: 200
    end

    def add
        user_id = params[:user_id]
        product_id = params[:product_id]
        quantity = params[:quantity]

        user = User.find_by(id: user_id)
        product = Product.find_by(id: product_id)
        # error handler 
        shopping_cart = user.shopping_cart
        
        shopping_cart_product = ShoppingCartProduct.create(shopping_cart: shopping_cart, product: product, quantity: quantity.to_i)

        serializer = ShoppingCartSerializer.new(shopping_cart)
        render json: serializer.serializable_hash , status: 200
    end
    
    def delete 
        user_id = params[:user_id]
        shopping_cart_product_id = params[:shopping_cart_product_id]

        shopping_cart_product = ShoppingCartProduct.find_by(id: shopping_cart_product_id)
        shopping_cart_product.delete

        user = User.find_by(id: user_id)
        serializer = ShoppingCartSerializer.new(user.shopping_cart)
        render json: serializer.serializable_hash , status: 200
    end

    def update
        user_id = params[:user_id]
        shopping_cart_product_id = params[:shopping_cart_product_id]
        quantity = params[:quantity]

        shopping_cart_product = ShoppingCartProduct.find_by(id: shopping_cart_product_id)
        shopping_cart_product.update(quantity: quantity.to_i)

        user = User.find_by(id: user_id)
        serializer = ShoppingCartSerializer.new(user.shopping_cart)
        render json: serializer.serializable_hash , status: 200
    end

    def checkout
        user_id = params[:user_id]
        user = User.find_by(id: user_id)

        shopping_cart = user.shopping_cart
        products = shopping_cart.products

        receipt = Receipt.from_cart(shopping_cart)

        ShoppingCartProduct.where(shopping_cart: shopping_cart).destroy_all

        serializer = ReceiptSerializer.new(receipt)

        render json: serializer.serializable_hash , status: 200
    end
end