class CreatePosQuotes < ActiveRecord::Migration
  def change
    create_table :pos_quotes do |t|
      t.text :quote
      t.string :author

      t.timestamps null: false
    end
  end
end
