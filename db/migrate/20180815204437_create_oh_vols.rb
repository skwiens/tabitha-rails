class CreateOhVols < ActiveRecord::Migration[5.2]
  def change
    create_table :oh_vols do |t|

      t.timestamps
    end
  end
end
