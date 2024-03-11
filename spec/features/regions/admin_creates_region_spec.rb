require 'rails_helper'

RSpec.describe 'Creating a Region', type: :feature do
    

    before do
       
        @admin = create('user', :admin)
    end
      
    it 'admin can create a region' do
    #      User Input Part
      
       log_in_as(@admin)
       visit new_region_path 
       fill_in 'Name', with: 'kevin'
       click_on 'Add Region'
       expect(current_path).to eq regions_path
    
    end
    
end
