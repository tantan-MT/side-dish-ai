class RenameImageNameToImageUrl < ActiveRecord::Migration[8.1]
  def change
    rename_column :ingredients, :image_name, :image_url
  end
end
