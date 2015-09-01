class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :phone
      t.string :preference
      t.boolean :subscribed

      t.timestamps null: false
    end
  end
end
