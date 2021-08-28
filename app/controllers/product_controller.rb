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

        serializer = ProductSerializer.new(products, { fields: { product: [:name, :image, :slug, :cashback_percentage, :price, :rating] } })

        render json: serializer.serializable_hash, status: 200
    end
    
    def get_product
        id = params[:id]

        product = Product.find_by(id: id)

        serializer = ProductSerializer.new(product)

        render json: serializer.serializable_hash, status: 200
    end
end