class CreateReceipts < ActiveRecord::Migration[6.1]
  def change
    create_table :receipts, id: :uuid do |t|
      t.uuid :user_id
      t.timestamps
    end
  end
end
