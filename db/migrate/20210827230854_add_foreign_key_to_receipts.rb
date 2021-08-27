class AddForeignKeyToReceipts < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key :receipts, :users

    add_foreign_key :receipt_products, :receipts
    add_foreign_key :receipt_products, :products
  end
end
