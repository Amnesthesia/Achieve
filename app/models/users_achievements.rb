# == Schema Information
#
# Table name: users_achievements
#
#  id               :integer          not null, primary key
#  achievement_id   :integer
#  user_id          :integer
#  coop_status      :integer
#  complete         :boolean
#  tracked          :boolean
#  user_type        :string(255)
#  achievement_type :string(255)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class UsersAchievements < ActiveRecord::Base
  attr_accessible :achievement_id, :complete, :coop_status, :tracked, :user_id
  belongs_to :user, :polymorphic => true
  belongs_to :achievement, :polymorphic => true
end
