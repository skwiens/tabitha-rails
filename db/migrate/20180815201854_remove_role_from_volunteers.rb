class RemoveRoleFromVolunteers < ActiveRecord::Migration[5.2]
  def change
    remove_column :volunteers, :role
  end
end
