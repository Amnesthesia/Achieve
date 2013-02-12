class Activity < ActiveRecord::Base
  belongs_to :user
  belongs_to :achievement
  attr_accessible :activity, :time
end
