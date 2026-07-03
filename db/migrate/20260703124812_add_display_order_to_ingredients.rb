class AddDisplayOrderToIngredients < ActiveRecord::Migration[8.1]
  def change
    add_column :ingredients, :display_order, :integer
  end
end
