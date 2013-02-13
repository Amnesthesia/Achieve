class CreateUsers < ActiveRecord::Migration
  def change
    drop_table :users
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :password_digest
      t.integer :age
      t.integer :gender
      t.string :city
      t.string :country
      t.string :zipcode
      t.string :img_path
      t.references :role

      t.timestamps
    end
    add_index :users, :role_id
  end
end
