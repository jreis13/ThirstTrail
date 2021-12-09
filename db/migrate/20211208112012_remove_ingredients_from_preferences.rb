class RemoveIngredientsFromPreferences < ActiveRecord::Migration[6.1]
  def change
    remove_column :preferences, :ingredients, :text
  end
end
