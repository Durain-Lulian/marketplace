class AddForeignKeyToCart < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key :shopping_carts, :products
    add_foreign_key :shopping_carts, :users
    
    # add_foreign_key :shopping_carts, :users
  end
end
