class CreateOurTeams < ActiveRecord::Migration[6.1]
  def change
    create_table :our_teams do |t|

      t.timestamps
    end
  end
end
