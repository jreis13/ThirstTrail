class CreatePreferenceIngredients < ActiveRecord::Migration[6.1]
  def change
    create_table :preference_ingredients do |t|
      t.references :preference, null: false, foreign_key: true
      t.references :ingredient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
