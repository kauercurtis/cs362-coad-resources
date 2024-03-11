require 'rails_helper'

RSpec.describe 'Creating an Organization Application', type: :feature do
    before do
        @admin = create('user', :admin)
        @organization = create(:organization , name: 'kevin')
    end
      
    it 'can create an org' do
    #      User Input Part
      
       log_in_as(@admin)
       visit organizations_path 
       click_on 'Pending'
        # click_on 'Review'
       first(:link , "Review").click
       click_on 'Approve'
      
       expect(current_path).to eq organizations_path
    
    end

end
