class CreateTransactions < ActiveRecord::Migration[5.0]
  def change
    create_table :transactions do |t|
      t.string :date
      t.float :price
      t.string :category
      t.references :account, foreign_key: true

      t.timestamps
    end
  end
end
