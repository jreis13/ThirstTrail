class ChangeEventTypeToArray < ActiveRecord::Migration[6.1]
  def change
    change_column :recipes, :event_type, :string, array: true, :default => '{}'
    change_column :recipes, :cocktail_category, :string, array: true, :default => '{}'
  end
end
