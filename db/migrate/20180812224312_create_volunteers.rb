class CreateVolunteers < ActiveRecord::Migration[5.2]
  def change
    create_table :volunteers do |t|
      t.string :name, :null => false
      t.string :role
      t.string :email
      t.string :phone
      t.text :notes
      t.boolean :activestatus

      t.timestamps
    end
  end
end
