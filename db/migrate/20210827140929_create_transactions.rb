class CreateTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :transactions, id: :uuid do |t|
      t.uuid :user_id
      t.timestamps
    end
  end
end
