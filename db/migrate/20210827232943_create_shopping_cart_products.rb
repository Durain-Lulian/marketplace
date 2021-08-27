class CreateShoppingCartProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :shopping_cart_products, id: :uuid do |t|
      t.uuid :shopping_cart_id
      t.uuid :product_id
      t.integer :quantity
      t.timestamps
    end

    add_foreign_key :shopping_cart_products, :products
    add_foreign_key :shopping_cart_products, :shopping_carts
  end
end
