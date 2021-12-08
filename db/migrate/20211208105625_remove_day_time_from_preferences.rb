class RemoveDayTimeFromPreferences < ActiveRecord::Migration[6.1]
  def change
    remove_column :preferences, :daytime
  end
end
