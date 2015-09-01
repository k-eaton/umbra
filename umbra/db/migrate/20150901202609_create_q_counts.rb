class CreateQCounts < ActiveRecord::Migration
  def change
    create_table :q_counts do |t|
      t.integer :q_count, :null => false, :default => 1

      t.timestamps null: false
    end
  end
end
