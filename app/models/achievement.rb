# == Schema Information
#
# Table name: achievements
#
#  id                :integer          not null, primary key
#  title             :string(255)
#  full_description  :text
#  short_description :text
#  base_points       :decimal(, )
#  time_added        :datetime
#  expires           :datetime
#  img_path          :string(255)
#  is_global         :boolean
#  can_coop          :boolean
#  request_review    :boolean
#  has_parents       :boolean
#  user_id           :integer
#  user_type         :string(255)
#  location_id       :integer
#  location_type     :string(255)
#  type_id           :integer
#  type_type         :string(255)
#  mode_id           :integer
#  mode_type         :string(255)
#  category_id       :integer
#  category_type     :string(255)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Achievement < ActiveRecord::Base
  attr_accessible :base_points, :can_coop, :category_id, :expires, :full_description, :has_parents, :img_path, :is_global, :location_id, :mode_id, :request_review, :short_description, :time_added, :title, :type_id, :user_id
  has_many :users_achievements
  has_many :users, :through => :users_achievements
  has_many :parents, :through => :achievements_achievements 
  
  belongs_to :type
  belongs_to :category
  belongs_to :mode
  belongs_to :user
  
end
