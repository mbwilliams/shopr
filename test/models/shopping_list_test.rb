require 'test_helper'

class ShoppingListTest < ActiveSupport::TestCase

  test "should not save shopping list without purchase date" do
    shopping_list = shopping_lists(:at_minimart)
    shopping_list.purchase_date = nil

    assert_not shopping_list.save
  end

end
