class ProductController < ApplicationController
    def search
        product_name = params[:name].downcase

        product_names = ::Product.where('LOWER(name) like ?', 
            "%#{product_name}%")
            .pluck(:name)

        render json: { product: product_names }
    end

end