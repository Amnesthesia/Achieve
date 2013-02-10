require 'spec_helper'

describe 'Static pages' do
  
    describe 'Home page' do
      it "should have the h1 'Achievement: Unlocked'" do 
        visit '/static_pages/home'
        page.should have_selector('h1', :text => 'Welcome!')
      end
      
      it "should have the base title" do
        visit '/static_pages/home'
        page.should have_selector('title', :text => "Achievements: Unlocked")
      end
      
    end
    
    describe "Help page" do

      it "should have the content 'Help'" do
        visit '/static_pages/help'
        page.should have_content('Help')
      end
   
    end
   
    describe "About page" do
      it "should have some kind of 'about' content" do
        visit '/static_pages/about'
        page.should have_content('What is Achievements?')
      end
    end
   

end
