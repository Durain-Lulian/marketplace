class CreateSellers < ActiveRecord::Migration[6.1]
  def change
    create_table :sellers, id: :uuid do |t|
      t.string :name
      t.text :description
      t.string :category
      t.string :url
      t.timestamps
    end
  end
end
