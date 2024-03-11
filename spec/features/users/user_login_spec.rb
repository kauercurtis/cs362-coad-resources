require 'rails_helper'

RSpec.describe 'Logging in', type: :feature do
    
  
    before do
        
        @organization = create(:organization,name: 'jake' )
        @user = create('user', :organization_approved )
    end
    it "user can log in " do 
        log_in_as(@user)
        visit root_path
        expect(current_path).to eq root_path
    end 





end
