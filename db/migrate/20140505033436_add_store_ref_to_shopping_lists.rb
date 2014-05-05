class AddStoreRefToShoppingLists < ActiveRecord::Migration
  def change
    add_reference :shopping_lists, :store, index: true
  end
end
