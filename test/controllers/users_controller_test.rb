require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test "should get show" do
    user = User.create!(
      email: "test@example.com",
      password: "password123"
    )

    sign_in user

    get user_url
    assert_response :success
  end
end
