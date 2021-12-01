class AddAlcoholToPreferences < ActiveRecord::Migration[6.1]
  def change
    add_column :preferences, :alcohol, :string
  end
end
