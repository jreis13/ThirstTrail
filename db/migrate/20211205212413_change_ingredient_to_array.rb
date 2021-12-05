class ChangeIngredientToArray < ActiveRecord::Migration[6.1]
  def change
    change_column :recipes, :ingredient, :string, array: true,  using: "(string_to_array(ingredient, ','))"
  end
end
