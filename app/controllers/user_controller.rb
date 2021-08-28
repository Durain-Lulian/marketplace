class UserController < ApplicationController
    def create
        user_id = params[:user_id]

        user = User.create(id: user_id)
        shopping_cart = ShoppingCart.create(user: user)

        render json: user, status: 200
    end

    def get_by_id
        user_id = params[:user_id]

        user = 
    end
end