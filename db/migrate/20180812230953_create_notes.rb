class CreateNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :notes do |t|
      t.integer :customers
      t.text :body
      t.text :shopping

      t.timestamps
    end
  end
end
