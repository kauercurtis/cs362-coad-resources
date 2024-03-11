require 'rails_helper'

RSpec.describe 'Deleting a Region', type: :feature do

    before do
        @admin = create('user', :admin)
        @region = create(:region)
    end
      
    it 'admin can delete a region' do
    #      User Input Part
      
       log_in_as(@admin)
       visit regions_path 
       click_on @region
       click_on 'Delete'
       expect(current_path).to eq regions_path
        

    end
    
end
