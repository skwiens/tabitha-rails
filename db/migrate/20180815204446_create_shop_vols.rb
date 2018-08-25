class CreateShopVols < ActiveRecord::Migration[5.2]
  def change
    create_table :shop_vols do |t|

      t.timestamps
    end
  end
end
