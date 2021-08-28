class CreateSellers < ActiveRecord::Migration[6.1]
  def change
    create_table :sellers, id: :uuid do |t|
      t.string :name
      t.string :slug
      t.text :description
      t.string :category
      t.string :image_url
      t.float :rating
      t.timestamps
    end
  end
end
