# == Schema Information
#
# Table name: activities
#
#  id             :integer          not null, primary key
#  user_id        :integer
#  achievement_id :integer
#  activity       :text
#  time           :datetime
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Activity < ActiveRecord::Base
  belongs_to :user
  belongs_to :achievement
  attr_accessible :activity, :time
end
