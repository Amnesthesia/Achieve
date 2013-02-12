# == Schema Information
#
# Table name: modes
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :text
#  img_path    :string(255)
#  multiplier  :decimal(, )
#  time        :datetime
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Mode < ActiveRecord::Base
  attr_accessible :description, :img_path, :multiplier, :time, :title
  has_many :achievements
end
