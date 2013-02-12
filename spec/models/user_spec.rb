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

require 'spec_helper'

describe User do
  
  before{ @user =  User.new(name: "Test", email: "test@meh.meh", password: "nothing", age: 99, gender: 3, city: "None", zipcode: "1921", img_path: nil, role_id: 1) }
  subject{ @user }
  
  it{ should respond_to(:name) } #Check so there's a name
  it{ should respond_to(:email) } #Check so there's an email
  it{ should respond_to(:password) } #Check so there's a password
  it{ should respond_to(:age) } #Check so there's an age
  it{ should respond_to(:zipcode) } #Check so there's a zipcode
  
  it{ should be_valid } #Check so the user was created properly
  
  describe "test for lack of name" do
    before{ @user.name = " " }
    it { should_not be_valid }
  end 
  
  describe "test for incorrect email" do
    it "should be invalid" do
       addresses = %w(user@foo,com user_at_foo_org test.user@foo. foo@bar_meh.com foo@foo+bar.com)
       addresses.each do |address|
         @user.email = address
         @user.should_not be_valid
       end 
    end
  end
  
  describe "test for duplicate email, regardless of case (upcased email)" do
    before do
      user_same_email = @user.dup
      user_same_email.email = @user.email.upcase
      user_same_email.save
    end
    
    it{ should_not be_valid }
  end
  
  describe "test for gender between 1-3" do
    before{ @user.gender = 4 }
    it{ should_not be_valid }
  end
  
end
