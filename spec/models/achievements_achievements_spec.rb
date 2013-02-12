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

require 'spec_helper'

describe AchievementsAchievements do
  pending "add some examples to (or delete) #{__FILE__}"
end
