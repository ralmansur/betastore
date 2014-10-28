require 'test_helper'

class CreateSubscriptionTest < ActionDispatch::IntegrationTest

  def test_create_product
    visit "/admin/products"
    click_on "New Product"
    fill_in "Name", with: 'Test'
    fill_in "Price", with: 0.99
    click_on "Create Product"
    assert page.has_content?("Product #{Product.last.id} was created.")
    click_on Product.last.name
    click_on "Edit Product"
    fill_in "Price", with: 1.99
    click_on "Update Product"
    assert_equal 1.99, Product.last.price
    last_product = Product.last.id
    assert page.has_content?("Product #{last_product} was updated.")
    click_on Product.last.name
    click_on "Delete"
    assert_equal 0, Product.where(name: 'Test').count, "Product Deleted."
    assert page.has_content?("Product #{last_product} was deleted.")
  end

end
