class SellerController < ApplicationController
    def get_shops_by_category
        category = params[:category]

        sellers = ::Seller.where(category: category)

        serializer = SellerSerializer.new(sellers, { fields: { seller: [:name, :image_url, :slug, :max_cashback] } })

        render json: serializer.serializable_hash, status: 200
    end

    def get_shop
        slug = params[:slug]

        seller = Seller.find_by(slug: slug)

        serializer = SellerSerializer.new(seller)

        render json: serializer.serializable_hash, status: 200
    end
end
