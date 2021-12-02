class CreateOurteams < ActiveRecord::Migration[6.1]
  def change
    create_table :ourteams do |t|

      t.timestamps
    end
  end
end
