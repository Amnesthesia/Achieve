class CreateTypes < ActiveRecord::Migration
  def change
    create_table :types do |t|
      t.string :title
      t.text :description
      t.string :img_path
      t.integer :points
      t.timestamp :time

      t.timestamps
    end
  end
end
