class AddRoleVolunteers < ActiveRecord::Migration[5.2]
  def change
    add_column :volunteers, :role, :string
  end
end
