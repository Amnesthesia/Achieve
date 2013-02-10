require 'spec_helper'

describe "UserPages" do
    
    
    subject { page }
    describe "Sign up page" do
      before(:each) do
        visit signup_path
      end
      
      it { should have_selector('h2', text: "Come play") }
      it { should have_selector('title', text: full_title('Join')) }
    end
    
 
end
