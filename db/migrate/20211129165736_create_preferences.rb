class CreatePreferences < ActiveRecord::Migration[6.1]
  def change
    create_table :preferences do |t|
      t.string :event_type
      t.string :daytime
      t.string :cocktail_category
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
