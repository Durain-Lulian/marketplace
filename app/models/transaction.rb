class Transaction < ApplicationRecord
    has_many :transaction_products
    has_many :product, through: :transaction_products
end
