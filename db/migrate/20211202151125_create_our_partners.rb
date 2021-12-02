class CreateOurPartners < ActiveRecord::Migration[6.1]
  def change
    create_table :our_partners do |t|

      t.timestamps
    end
  end
end
