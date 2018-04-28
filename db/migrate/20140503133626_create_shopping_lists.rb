class CreateShoppingLists < ActiveRecord::Migration[4.2]
  def change
    create_table :shopping_lists do |t|
      t.string :name
      t.text :description
      t.date :purchase_date

      t.timestamps
    end
  end
end
