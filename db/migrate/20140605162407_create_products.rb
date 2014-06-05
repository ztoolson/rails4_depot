class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.decimal :price, precision: 8, scale: 2 # 8 sig fig total, with only 2 sig fig after decimal

      t.timestamps
    end
  end
end
