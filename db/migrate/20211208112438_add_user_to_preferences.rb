class AddUserToPreferences < ActiveRecord::Migration[6.1]
  def change
    add_reference :preferences, :user, null: false, foreign_key: true
  end
end
