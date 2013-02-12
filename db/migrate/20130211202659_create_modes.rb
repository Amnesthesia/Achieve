class CreateModes < ActiveRecord::Migration
  def change
    create_table :modes do |t|
      t.string :title
      t.text :description
      t.string :img_path
      t.decimal :multiplier
      t.timestamp :time

      t.timestamps
    end
  end
end
