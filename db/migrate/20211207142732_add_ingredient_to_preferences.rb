class AddIngredientToPreferences < ActiveRecord::Migration[6.1]
  def change
    add_column :recipes, :event_type, :string
  end
end
