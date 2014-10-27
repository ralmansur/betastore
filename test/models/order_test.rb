require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  test "total amount is set when saving order" do
    order = Order.new(customer: customers(:rafee))
    order.save

    order.line_items.create(
      product: products(:hat),
      quantity: 2)

    order.line_items.create(
      product: products(:hat),
      quantity: 2)

    assert_equal 39.96, order.total_amount
  end
end
