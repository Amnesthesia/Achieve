class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :name
      t.text :description
      t.string :img_path

      t.timestamps
    end
  end
end
