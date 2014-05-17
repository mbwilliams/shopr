require 'test_helper'

class StoreTest < ActiveSupport::TestCase

  test "should not save store without name" do
    store = Store.new
    store.location = "My store's location"

    assert_not store.save
  end

  test "should not save store without location" do
    store = Store.new
    store.name = "My Store"

    assert_not store.save
  end

end
