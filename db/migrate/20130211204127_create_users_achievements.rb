class CreateUsersAchievements < ActiveRecord::Migration
  def change
    create_table :users_achievements do |t|
      t.integer :achievement_id
      t.integer :user_id
      t.integer :coop_status
      t.boolean :complete
      t.boolean :tracked
      t.references :user, :polymorphic => true
      t.references :achievement, :polymorphic => true
      t.timestamps
    end
  end
end
