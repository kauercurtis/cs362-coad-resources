require 'rails_helper'

RSpec.describe 'Deleting a Region', type: :feature do

    before do
        @admin = create('user', :admin)
        @region = create(:region ,name: 'fake_region_hello')
    end
      
    it 'admin can delete a region' do
    #      User Input Part
      
       log_in_as(@admin)
       visit regions_path 
       click_on 'fake_region_hello'
       click_on 'Delete'
       expect(page.body).to have_text 'fake_region_hello was deleted'
        

    end
    
end
