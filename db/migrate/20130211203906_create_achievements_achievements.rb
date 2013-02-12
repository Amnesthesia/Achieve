class CreateAchievementsAchievements < ActiveRecord::Migration
  def change
    create_table :achievements_achievements do |t|
      
      t.references :achievement, :polymorphic => true
      t.references :parent, :polymorphic => true
      
      t.timestamps
    end
  end
end
