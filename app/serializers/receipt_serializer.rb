class ReceiptSerializer
    include JSONAPI::Serializer

    attribute :total_price do |cart|
        receipt_products = cart.receipt_products

        sum = 0
        receipt_products.each do |scp|
            sum += scp.total_price
        end
        sum
    end

    attribute :products do |receipt|
        receipt_products = receipt.receipt_products

        serializer = ReceiptProductSerializer.new(receipt_products)

        serializer.serializable_hash
    end        
end
