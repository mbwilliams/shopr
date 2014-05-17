require 'test_helper'

class StoreTest < ActiveSupport::TestCase

  test "should not save store without name" do
    store = stores(:minimart)
    store.name = nil

    assert_not store.save
  end

  test "should not save store without location" do
    store = stores(:minimart)
    store.location = nil

    assert_not store.save
  end

end
