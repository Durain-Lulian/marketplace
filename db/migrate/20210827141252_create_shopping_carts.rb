class CreateShoppingCarts < ActiveRecord::Migration[6.1]
  def change
    create_table :shopping_carts, id: :uuid do |t|
      t.uuid :user_id
      t.uuid :product_id
      t.integer :quantity
      t.timestamps
    end
  end
end
