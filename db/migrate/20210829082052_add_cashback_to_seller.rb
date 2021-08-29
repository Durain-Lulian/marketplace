class AddCashbackToSeller < ActiveRecord::Migration[6.1]
  def change
    add_column :sellers, :cashback, :int
  end
end
