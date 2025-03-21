class CreateProducts < ActiveRecord::Migration[8.0]
  def change
    create_table :products do |t|
      t.string :name
      t.references :user, null: false, foreign_key: true
      t.decimal :price
      t.integer :stock

      t.timestamps
    end
  end
end
