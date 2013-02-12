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

require 'spec_helper'

describe UsersAchievements do
  pending "add some examples to (or delete) #{__FILE__}"
end
