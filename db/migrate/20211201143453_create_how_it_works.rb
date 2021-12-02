class CreateHowItWorks < ActiveRecord::Migration[6.1]
  def change
    create_table :how_it_works do |t|

      t.timestamps
    end
  end
end
