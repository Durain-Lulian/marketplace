class Receipt < ApplicationRecord
    belongs_to :user
    has_many :receipts
    has_many :receipt_products
    has_many :products, through: :receipt_products
    
    def self.from_cart(shopping_cart)
        user_id = shopping_cart.user_id
        user = User.find_by(id: user_id)
        receipt = Receipt.create(user: user)
        scps = shopping_cart.shopping_cart_products

        scps.each do |scp|
            ReceiptProduct.create(product: scp.product, receipt: receipt, quantity: scp.quantity)
        end

        return receipt
    end
end
