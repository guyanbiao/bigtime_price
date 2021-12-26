class CreatePriceRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :price_records do |t|
      t.datetime :captured_at
      t.string :category_id
      t.float :price

      t.timestamps
    end

    add_index :price_records, [:category_id, :captured_at]
  end
end
