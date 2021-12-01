class CreateAboutus < ActiveRecord::Migration[6.1]
  def change
    create_table :aboutus do |t|

      t.timestamps
    end
  end
end
