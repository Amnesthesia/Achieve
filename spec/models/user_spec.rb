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

require 'spec_helper'

describe User do
  
  before{ @user =  User.new(username: "Test", first_name: "Test", last_name: "Testsson", email: "test@meh.meh", password: "password1", password_confirmation: "password1", age: 99, gender: 3, city: "None", zipcode: "1921", img_path: nil) }
  subject{ @user }
  
  it{ should respond_to(:first_name) } #Check so there's a name
  it{ should respond_to(:last_name) } #Check so there's a surname
  it{ should respond_to(:username) } #Check for username
 
  it{ should respond_to(:email) } #Check so there's an email
  it{ should respond_to(:password) } #Check so there's a password
  it{ should respond_to(:password_confirmation) }
  it{ should respond_to(:age) } #Check so there's an age
  it{ should respond_to(:zipcode) } #Check so there's a zipcode
  it{ should respond_to(:authenticate) }
  
  it{ should be_valid } #Check so the user was created properly
  
  describe "test for lack of name" do
    before{ @user.first_name = @user.last_name = @user.username = " " }
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
  
  describe "test for password presence" do
    before { @user.password = @user.password_confirmation = " " }
    it { should_not be_valid }
  end
  
  describe "test for password confirmation match" do
    before{ @user.password_confirmation = "mismatch" }
    it { should_not be_valid }
  end
  
  describe "when password confirmation is nil" do
    before{ @user.password_confirmation = nil }
    it { should_not be_valid }
  end
  
  describe "passwords should be at least 8 characters" do
    before { @user.password = @user.password_confirmation = "a"*7 }
    it{ should be_invalid }
  end
     
  describe "return value of authentication method" do
    before{ @user.save }
    let(:found_user){ User.find_by_email(@user.email) }
    
    describe "with valid password" do
      it{ should == found_user.authenticate(@user.password) }  
    end
    
    describe "with invalid password" do
      let(:user_with_invalid_pw){ found_user.authenticate("invalid") }
      
      it{ should_not == user_with_invalid_pw }
      specify{ user_with_invalid_pw.should be_false }
    end
    
  end
  
end
