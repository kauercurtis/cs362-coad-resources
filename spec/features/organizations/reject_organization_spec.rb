require 'rails_helper'

RSpec.describe 'Rejecting an organization', type: :feature do

    before do
        @admin = create('user', :admin)
        @organization = create(:organization, name: 'kevin' )
    end
      
    it 'can reject an org' do
    #      User Input Part
      
       log_in_as(@admin)
       visit organizations_path 
       click_on 'Pending'
        # click_on 'Review'
       first(:link , "Review").click
       click_on 'Reject'
      
       expect(page.body).to have_text 'kevin has been rejected' 
    
    end
end
