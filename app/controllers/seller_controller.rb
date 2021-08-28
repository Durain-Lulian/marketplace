class SellerController < ApplicationController
    def get_shops_by_category
        category = params[:category]

        sellers = ::Seller.where(category: category)

        serializer = SellerSerializer.new(sellers)

        render json: serializer.serializable_hash, status: 200
    end
end
