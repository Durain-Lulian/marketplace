class Product < ApplicationRecord
    belongs_to :seller
    has_many :shopping_cart_products
    has_many :receipt_products
    has_many :receipts, through: :receipts
end
