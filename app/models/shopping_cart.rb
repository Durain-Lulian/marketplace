class ShoppingCart < ApplicationRecord
    has_many :shopping_cart_products
    has_many :products, through: :shopping_cart_products
    belongs_to :user
end
