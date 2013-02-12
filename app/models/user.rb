# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  email      :string(255)
#  password   :string(255)
#  age        :integer
#  gender     :integer
#  city       :string(255)
#  country    :string(255)
#  zipcode    :string(255)
#  img_path   :string(255)
#  role_id    :integer
#  role_type  :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base
  attr_accessible :age, :city, :country, :email, :gender, :img_path, :name, :password, :role_id, :zipcode
  belongs_to :role
  has_many :users_achievements
  has_many :achievements, :through => :users_achievements
  
end
