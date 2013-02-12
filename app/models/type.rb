# == Schema Information
#
# Table name: types
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :text
#  img_path    :string(255)
#  points      :integer
#  time        :datetime
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Type < ActiveRecord::Base
  attr_accessible :description, :img_path, :points, :time, :title
  has_many :achievements
end
