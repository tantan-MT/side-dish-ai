class AddImageNameToIngredients < ActiveRecord::Migration[8.1]
  def change
    add_column :ingredients, :image_name, :string
  end
end
