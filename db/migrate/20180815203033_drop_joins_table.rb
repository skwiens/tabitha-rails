class DropJoinsTable < ActiveRecord::Migration[5.2]
  def change
    drop_join_table :openhours, :volunteers
  end
end
