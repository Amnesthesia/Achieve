# == Schema Information
#
# Table name: achievements
#
#  id                :integer          not null, primary key
#  title             :string(255)
#  full_description  :string(255)
#  short_description :string(255)
#  base_points       :integer
#  img_path          :string(255)
#  is_global         :boolean
#  can_coop          :boolean
#  request_review    :boolean
#  has_parents       :boolean
#  expires           :datetime
#  user_id           :integer
#  location_id       :integer
#  type_id           :integer
#  category_id       :integer
#  mode_id           :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Achievement < ActiveRecord::Base
  belongs_to :user
  belongs_to :location
  belongs_to :type
  belongs_to :category
  belongs_to :mode
  attr_accessible :base_points, :can_coop, :expires, :full_description, :has_parents, :img_path, :is_global, :request_review, :short_description, :title
  has_many :users_achievements
  has_many :users, :through => :users_achievements
  has_many :parents, :through => :achievements_achievements
  
  validates :base_points, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :can_coop, presence: true
  validates :full_description, presence: true
  validates :short_description, presence: true, length: { maximum: 255 }
  validates :title, presence: true, length: { maximum: 100 }
  validates :is_global, presence: true
  
end
