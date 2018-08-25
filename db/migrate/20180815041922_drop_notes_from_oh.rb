class DropNotesFromOh < ActiveRecord::Migration[5.2]
  def change
    remove_column :openhours, :notes
  end
end
