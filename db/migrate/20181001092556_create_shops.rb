class CreateShops < ActiveRecord::Migration[5.1]
  def change
    create_table :shops do |t|
      t.string :name
      t.integer :shop_no
      t.string :address
      t.timestamps
    end
  end
end
