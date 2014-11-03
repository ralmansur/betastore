require 'test_helper'

class CreateSubscriptionTest < ActionDispatch::IntegrationTest

  def test_create_product
    visit "/admin/products"
    click_on "New Product"
    fill_in "Name", with: 'Test24'
    fill_in "Price", with: 0.99
    click_on "Create Product"
    assert page.has_content?("Product Test24 was created.")
    click_on 'Test24'
    click_on "Edit Product"
    fill_in "Price", with: 1.99
    click_on "Update Product"
    assert_equal 1.99, Product.last.price
    last_product = Product.last.name
    assert page.has_content?("Product Test24 was updated.")
    click_on 'Test24'
    click_on "Delete"
    assert_equal 0, Product.where(name: 'Test').count, "Product Deleted."
    assert page.has_content?("Product Test24 was deleted.")
  end

end
