require "test_helper"

class RecipesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    mock_recipe = {
      title: "テストレシピ",
      description: "テスト用説明",
      ingredients: [ "にんじん" ],
      steps: [ "切る", "炒める" ]
    }

    RecipeGenerator
      .any_instance
      .stub(:generate, mock_recipe) do
        get recipes_show_url
        assert_response :success
      end
  end
end
