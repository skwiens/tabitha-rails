class FixReferenceOnNotes < ActiveRecord::Migration[5.2]
  def change
    remove_reference :notes, :openhours, foreign_key: true

    add_reference :notes, :openhour, foreign_key: true
  end
end
