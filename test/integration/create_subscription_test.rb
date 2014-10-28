require 'test_helper'

class CreateSubscriptionTest < ActionDispatch::IntegrationTest

  def test_create_subscription
    visit "/"
    fill_in "Let me know when we go live", with: 'test@example.com'
    click_on "Sign Up"
    assert page.has_content?('Subscription was successfully created.')
    assert_equal 'test@example.com', Subscription.last.email
  end

end
