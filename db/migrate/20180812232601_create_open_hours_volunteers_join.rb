class CreateOpenHoursVolunteersJoin < ActiveRecord::Migration[5.2]
  def change
    create_table :openhours_volunteers do |t|
      t.belongs_to :openhour, index: true
      t.belongs_to :volunteer, index: true
    end
  end
end
