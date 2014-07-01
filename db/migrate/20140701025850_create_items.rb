class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.decimal :price, precision: 10, scale: 2
      t.references :store
      t.references :shopping_list

      t.timestamps
    end
  end
end
