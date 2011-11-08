class AddDrunkColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :drunk, :integer, { :null => false, :default => 0 }
  end
end
