class CreateData < ActiveRecord::Migration[5.1]
  def change
    create_table :data do |t|
      t.string :name
      t.string :message
      t.references :shop, index: true, foreign_key: true
      t.timestamps
    end
  end
end
