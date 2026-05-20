require "test_helper"

class RecipesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    mock_recipe = {
      title: "テストレシピ",
      description: "テスト用の説明",
      ingredients: [ "にんじん 1本" ],
      steps: [ "切る", "炒める", "完成" ]
    }

    RecipeGenerator.stub(:new, -> { Struct.new(:generate).new(mock_recipe) }) do
      get recipes_show_url
      assert_response :success
    end
  end
end
