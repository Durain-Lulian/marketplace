class ProductController < ApplicationController
    def search
        product_name = params[:name].downcase

        product_names = ::Product.where('LOWER(name) like ?', 
            "%#{product_name}%")
            .pluck(:name)

        render json: { product: product_names }
    end

    def get_products
        product_name = params[:name].downcase

        products = ::Product.where('LOWER(name) like ?', 
            "%#{product_name}%")

        render json: { product: products }
    end
end