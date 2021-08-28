class ShopController < ApplicationController
    def get_shops_by_category
        category = params[:category]

        sellers = ::Seller.where(category: category)

        render json: { seller: sellers }
    end
end
