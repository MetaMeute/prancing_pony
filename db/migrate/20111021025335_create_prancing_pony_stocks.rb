class CreatePrancingPonyStocks < ActiveRecord::Migration
  def change
    create_table :prancing_pony_stocks do |t|
      t.string :name, :null => false
      t.decimal :amount, :scale => 2

      t.timestamps
    end

    add_index :prancing_pony_stocks, :name
  end
end
