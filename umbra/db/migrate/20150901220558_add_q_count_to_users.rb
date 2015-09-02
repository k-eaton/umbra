class AddQCountToUsers < ActiveRecord::Migration
  def change
    add_column :users, :q_count, :integer, :null => false, :default => 1
  end
end
