class CreateOpenhours < ActiveRecord::Migration[5.2]
  def change
    create_table :openhours do |t|
      t.date :date
      t.boolean :posted
      t.text :notes

      t.timestamps
    end
  end
end
