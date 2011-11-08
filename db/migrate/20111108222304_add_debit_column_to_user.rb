class AddDebitColumnToUser < ActiveRecord::Migration
  def change
    add_column :users, :debit, :decimal, { :precision => 10, :scale => 2, :null => false, :default => 0.0 }
  end
end
