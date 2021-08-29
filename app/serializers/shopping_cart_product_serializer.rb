
class ShoppingCartProductSerializer
    include JSONAPI::Serializer

    attributes :product_id, :quantity

    
    attribute :price do |scp|
        scp.product.price
    end

    attribute :total_price do |scp| 
        scp.total_price
    end

    attribute :image do |scp| 
        scp.product.image
    end

    attribute :name do |scp| 
        scp.product.name
    end

    attribute :description do |scp| 
        scp.product.description
    end
end