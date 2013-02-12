class CreateAchievements < ActiveRecord::Migration
  def change
    create_table :achievements do |t|
      t.string :title
      t.text :full_description
      t.text :short_description
      t.decimal :base_points
      t.timestamp :time_added
      t.timestamp :expires
      t.string :img_path
      t.boolean :is_global
      t.boolean :can_coop
      t.boolean :request_review
      t.boolean :has_parents
      
      t.references :user, :polymorphic => true
      t.references :location, :polymorphic => true
      t.references :type, :polymorphic => true
      t.references :mode, :polymorphic => true
      t.references :category, :polymorphic => true

      t.timestamps
    end
  end
end
