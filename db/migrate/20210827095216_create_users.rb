class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users, id: :uuid do |t|
      enable_extension 'pgcrypto'
      t.timestamps
    end
  end
end
