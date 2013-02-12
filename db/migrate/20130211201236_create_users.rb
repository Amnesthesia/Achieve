class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.integer :age
      t.integer :gender
      t.string :city
      t.string :country
      t.string :zipcode
      t.string :img_path
      t.references :role, :polymorphic => true

      t.timestamps
    end
  end
end
