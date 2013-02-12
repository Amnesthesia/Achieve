class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.references :user
      t.references :achievement
      t.text :activity
      t.timestamp :time

      t.timestamps
    end
    add_index :activities, :user_id
    add_index :activities, :achievement_id
  end
end
