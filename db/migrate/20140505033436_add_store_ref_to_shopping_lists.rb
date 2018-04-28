class AddStoreRefToShoppingLists < ActiveRecord::Migration[4.2]
  def change
    add_reference :shopping_lists, :store, index: true
  end
end
