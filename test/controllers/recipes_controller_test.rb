require "test_helper"

class RecipesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    recipe = recipes(:one)
    get recipe_path(recipe)
    assert_response :success
  end
end
