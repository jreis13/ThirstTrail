class RemoveUserInPreferences < ActiveRecord::Migration[6.1]
  def change
    remove_reference :preferences, :user
  end
end
