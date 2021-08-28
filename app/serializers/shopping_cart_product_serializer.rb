
class ShoppingCartProductSerializer
    include JSONAPI::Serializer

    attributes :product_id, :quantity

    attribute :price do |scp|
        scp.product.price
    end

    attributes :total_price do |scp| 
        scp.total_price
    end

    attributes :image do |scp| 
        scp.product.image
    end
end