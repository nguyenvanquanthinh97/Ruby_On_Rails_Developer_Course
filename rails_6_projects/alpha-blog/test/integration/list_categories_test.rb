require "test_helper"

class ListCategoriesTest < ActionDispatch::IntegrationTest
  def setup
    @category = Category.create(name: "Sports")
    @category2 = Category.create(name: "Travel")
  end

  test "should show categories listing" do
    get categories_path
    assert_response :success
    assert_select "a[href=?]", category_path(@category), text: "Sports"
    assert_select "a[href=?]", category_path(@category2), text: "Travel"
  end
end
