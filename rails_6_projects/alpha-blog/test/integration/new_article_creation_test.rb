require "test_helper"

class NewArticleCreationTest < ActionDispatch::IntegrationTest
  def setup
    @user = User.create(username: "user", email: "user@example.com", password: "password", admin: false)
  end

  test "should go to article create page and successfully article create" do
    get login_path
    sign_in_as(@user)

    assert_response :redirect
    assert_difference("Article.count", 1) do
      post articles_path, params: { article: { title: "title example", description: "description example" } }
    end
    follow_redirect!
    assert_match(/Article was created successfully/i, response.body)
  end
end
