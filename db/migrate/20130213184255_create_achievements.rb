class CreateAchievements < ActiveRecord::Migration
  def change
    drop_table :achievements
    create_table :achievements do |t|
      t.string :title
      t.string :full_description
      t.string :short_description
      t.integer :base_points
      t.string :img_path
      t.boolean :is_global
      t.boolean :can_coop
      t.boolean :request_review
      t.boolean :has_parents
      t.timestamp :expires
      t.references :user
      t.references :location
      t.references :type
      t.references :category
      t.references :mode

      t.timestamps
    end
    add_index :achievements, :user_id
    add_index :achievements, :location_id
    add_index :achievements, :type_id
    add_index :achievements, :category_id
    add_index :achievements, :mode_id
  end
end
