require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  test "create a product" do
    product = Product.new(name: "Application", price: 0.99)
    assert product.save, product.errors.full_messages
  end

  test "name is required" do
    product = Product.new(price: 0.99)
    refute product.save, 'name should be required'
    assert product.errors.full_messages.include?("Name is required"), product.errors.full_messages
  end

  test "price must be number" do
    product = Product.new(name: "Application", price: "$0.99")
    refute product.save, 'price must be a number'
    assert product.errors.full_messages.include?("Price isn't a number"), product.errors.full_messages
  end

end
