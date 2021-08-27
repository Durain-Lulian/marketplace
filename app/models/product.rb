class Product < ApplicationRecord
    belongs_to :seller
    has_many :transaction_products
    has_many :transactions, through: :transactions
end
