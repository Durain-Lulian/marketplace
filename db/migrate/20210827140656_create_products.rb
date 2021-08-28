class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products, id: :uuid do |t|
      t.string :name
      t.string :slug
      t.uuid :seller_id
      t.text :description
      t.float :price
      t.integer :cashback_percentage
      t.string :image
      t.timestamps
    end

    add_foreign_key :products, :sellers
  end
end
