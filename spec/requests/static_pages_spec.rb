require 'spec_helper'

describe 'Static pages' do

    # Page is our subject for these tests, as in, default variable to call methods on
    subject{ page }
        
    describe 'Home page' do
      before(:each) do
        visit root_path
      end
      

      
      it { should have_selector('h1', :text => 'Achievement') }
      
      it { should have_selector('title', :text => full_title("") ) }
      
      it { should_not have_selector('title', text: full_title('Home')) }
    end
    
    describe "Help page" do
      before{ visit help_path }
      it { should have_content('Help') }
    end
   
    describe "About page" do
      before{ visit about_path }
      it { should have_content('What is Achievements?') }
    end
    
  
   

end
