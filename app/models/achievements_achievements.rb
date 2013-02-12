# == Schema Information
#
# Table name: achievements_achievements
#
#  id               :integer          not null, primary key
#  achievement_id   :integer
#  achievement_type :string(255)
#  parent_id        :integer
#  parent_type      :string(255)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class AchievementsAchievements < ActiveRecord::Base
  attr_accessible :achievement_id, :parent_id
end
