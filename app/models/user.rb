# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  first_name      :string(255)
#  last_name       :string(255)
#  username        :string(255)
#  password_digest :string(255)
#  age             :integer
#  gender          :integer
#  city            :string(255)
#  country         :string(255)
#  zipcode         :string(255)
#  img_path        :string(255)
#  role_id         :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  email           :string(255)
#

class User < ActiveRecord::Base
  belongs_to :role
  attr_accessible :age, :city, :country, :first_name, :gender, :img_path, :last_name, :password_digest, :username, :zipcode, :email, :password, :password_confirmation
  has_secure_password
  has_many :users_achievements
  has_many :achievements, :through => :users_achievements
  
  # Before user is saved, we better make sure his email is lowercase'd
  before_save { |user| user.email = email.downcase }
  
  # Lots of validation comes here!
  validates :first_name, presence: true
  validates :first_name, length: { maximum: 30 }
  
  validates :last_name, presence: true, length: { maximum: 40 }
  validates :username, presence: true, length: { maximum: 40 }
  
  validates :password, presence: true, 
                       length: { minimum: 8 }
  validates :password_confirmation, presence: true
  
  validates :age, presence: true

  VALID_EMAIL = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, uniqueness: { case_sensitive: false }, 
                    presence: true, 
                    format: { with: VALID_EMAIL }, 
                    length: { maximum: 60 }
  
  validates :zipcode, presence: true
  validates :zipcode, numericality: true
  validates :gender, inclusion: { in: [1,2,3], message: "Gender is not between 1-3. 1 is male, 2 is female and 3 is cybernetic organism - because we prepare for the future mkay" }
  
end
