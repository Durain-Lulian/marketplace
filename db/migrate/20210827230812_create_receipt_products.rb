class CreateReceiptProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :receipt_products, id: :uuid do |t|
      t.uuid :receipt_id
      t.uuid :product_id
      t.integer :quantity
      t.timestamps
    end
  end
end
