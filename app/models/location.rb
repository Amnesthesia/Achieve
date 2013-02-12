# == Schema Information
#
# Table name: locations
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  city       :string(255)
#  region     :string(255)
#  state      :string(255)
#  country    :string(255)
#  zipcode    :string(255)
#  isCircular :boolean
#  x          :float
#  y          :float
#  z          :float
#  w          :float
#  radius     :float
#  time       :datetime
#  img_path   :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Location < ActiveRecord::Base
  attr_accessible :city, :country, :img_path, :isCircular, :radius, :region, :state, :time, :title, :w, :x, :y, :z, :zipcode
  has_many :achievements
end
