class CreateNegQuotes < ActiveRecord::Migration
  def change
    create_table :neg_quotes do |t|
      t.text :quote
      t.string :author

      t.timestamps null: false
    end
  end
end
