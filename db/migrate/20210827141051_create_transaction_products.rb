class CreateTransactionProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :transaction_products, id: :uuid do |t|
      t.uuid :transaction_id
      t.uuid :product_id
      t.integer :quantity
      t.timestamps
    end
  end
end
