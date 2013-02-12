class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :title
      t.string :city
      t.string :region
      t.string :state
      t.string :country
      t.string :zipcode
      t.boolean :isCircular
      t.float :x
      t.float :y
      t.float :z
      t.float :w
      t.float :radius
      t.timestamp :time
      t.string :img_path

      t.timestamps
    end
  end
end
