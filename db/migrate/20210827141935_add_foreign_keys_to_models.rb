class AddForeignKeysToModels < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key :transactions, :users

    add_foreign_key :transaction_products, :transactions
    add_foreign_key :transaction_products, :products
  end
end
