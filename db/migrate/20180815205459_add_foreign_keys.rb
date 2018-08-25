class AddForeignKeys < ActiveRecord::Migration[5.2]
  def change
    add_reference :oh_vols, :openhour, foreign_key: true
    add_reference :oh_vols, :volunteer, foreign_key: true

    add_reference :shop_vols, :openhour, foreign_key: true
    add_reference :shop_vols, :volunteer, foreign_key: true
  end
end
