require "test_helper"

class UsersSignupProcessTest < ActionDispatch::IntegrationTest
  test "should successfully sign up" do
    get signup_url
    assert_response :success

    assert_difference("User.count", 1) do
      post users_path, params: { user: { username: "user", email: "user@gmail.com", password: "password", admin: false}}
    end
    follow_redirect!
    assert_response :success
    assert_match(/Welcome to the Alpha Blog user, you have successfully signed up/i, response.body)
    assert_match(/Categories/i, response.body)
  end
end
