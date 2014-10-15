require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  test "create a product" do
    product = Product.new(name: "Application", price: 0.99)
    assert product.save, product.errors.full_messages
  end

  test "name is required" do
    product = Product.new(price: 0.99)
    refute product.save, 'name should be required'
    assert product.errors.full_messages.include?("Name can't be blank")
  end

  test "price must be number" do
    product = Product.new(name: "Application", price: "$0.99")
    refute product.save, 'price must be a number'
    assert product.errors.full_messages.include?("Price is not a number")
  end

end
