class CreateReceipts < ActiveRecord::Migration[5.0]
  def change
    create_table :receipts do |t|
      t.belongs_to :expense_category, foreign_key: true
      t.integer :total

      t.timestamps
    end
  end
end
