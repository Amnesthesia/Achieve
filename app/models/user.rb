# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  email      :string(255)
#  password_digest   :string(255)
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
  attr_accessible :age, :city, :country, :email, :gender, :img_path, :name, :password_digest, :role_id, :zipcode
  belongs_to :role
  has_many :users_achievements
  has_many :achievements, :through => :users_achievements
  
  # Before user is saved, we better make sure his email is lowercase'd
  before_save { |user| user.email = email.downcase }
  
  # Lots of validation comes here!
  validates :name, presence: true
  validates :name, length: { maximum: 50 }
  
  validates :password, presence: true
  validates :password, confirmation: true
  
  validates :age, presence: true

  VALID_EMAIL = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, uniqueness: { case_sensitive: false }, presence: true, format: { with: VALID_EMAIL }, length: { maximum: 60 }
  
  validates :zipcode, presence: true
  validates :zipcode, numericality: true
  validates :gender, inclusion: { in: [1,2,3], message: "Gender is not between 1-3. 1 is male, 2 is female and 3 is cybernetic organism - because we prepare for the future mkay" }
  
end
