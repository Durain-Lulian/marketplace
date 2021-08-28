class ReceiptProduct < ApplicationRecord
    belongs_to :product
    belongs_to :receipt

    def total_price
        self.quantity * self.product.price
    end

    def cashback_amount        
        self.product.cashback_percentage * self.quantity * self.product.price / 100
    end

end
