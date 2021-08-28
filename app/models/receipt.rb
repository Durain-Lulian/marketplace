class Receipt < ApplicationRecord
    belongs_to :user
    has_many :receipts
    has_many :products, through: :receipt_products
    
    def self.from_cart(shopping_cart)
        user_id = shopping_cart.user_id
        user = User.find_by(id: user_id)
        receipt = Receipt.create(user: user)

        puts receipt.errors.full_messages
        puts receipt.errors.full_messages
        puts receipt.errors.full_messages
        puts receipt.errors.full_messages
        puts receipt.errors.full_messages
        puts receipt.errors.full_messages
        puts receipt.errors.full_messages

        products = shopping_cart.products
        products.each do |product|
            ReceiptProduct.create(product: product, receipt: receipt)
        end

        return receipt
    end
end
