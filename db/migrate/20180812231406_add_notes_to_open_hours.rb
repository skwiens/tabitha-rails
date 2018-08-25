class AddNotesToOpenHours < ActiveRecord::Migration[5.2]
  def change
    add_reference :notes, :openhours, foreign_key: true
  end
end
