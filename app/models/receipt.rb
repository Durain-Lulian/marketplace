class Receipt < ApplicationRecord
    belongs_to :user
    has_many :products, through: :receipt_products
end
