class CreateStores < ActiveRecord::Migration[4.2]
  def change
    create_table :stores do |t|
      t.string :name
      t.text :location

      t.timestamps
    end
  end
end
