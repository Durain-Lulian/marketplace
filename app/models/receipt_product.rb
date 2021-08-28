class ReceiptProduct < ApplicationRecord
    belongs_to :product
    belongs_to :receipt

    def total_price
        self.quantity * self.product.price
    end
end
