require 'spec_helper'

describe "UserPages" do
    
    subject { page }
    
    describe "Sign up page" do
      before(:each) do
        visit signup_path
      end
      let(:submit) { "Join" }
      
      describe "test for empty form" do
        it "shouldnt create a user" do
          expect{ click_button submit }.not_to change(User, :count)
        end
      end
      
      describe "test for valid data" do
        before do
          fill_in "First name", with: "Foo"
          fill_in "Last name", with: "Bar"
          fill_in "City", with: "City"
          fill_in "Zipcode", with: "12345"
          select  "Norway", from: "Country"
          fill_in "Age", with: 55
          choose "user_gender_2"
        
          fill_in "Username", with: "Raboof"
          fill_in "Email", with: "meh@meeh.com"
          fill_in "Password", with: "supersecret"
          fill_in "Password confirmation", with: "supersecret"
         end
         
         it "should create a user" do
          expect{ click_button submit }.to change(User, :count).by(1)
        end
      end    
    end
    
    describe "User show page" do
      let(:user){ FactoryGirl.create(:user) }
      
      before(:each) do
        visit user_path(user)
      end
      
      it{ should have_selector('h1', text: user.first_name + " " + user.last_name + " (" + user.username + ")") }
      it{ should have_selector('title', text: full_title(user.first_name + " " + user.last_name)) }
    end
    
end
