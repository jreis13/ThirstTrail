class AddImageToRecipe < ActiveRecord::Migration[6.1]
  def change
    add_column :recipes, :image_url, :string
  end
end
