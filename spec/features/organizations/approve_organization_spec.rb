require 'rails_helper'

RSpec.describe 'Approving an organization', type: :feature do

    before do
        @admin = create('user', :admin)
        @organization = create(:organization , name: "kevin" )
    end
      
    it 'can apporve an org' do
    #      User Input Part
      
       log_in_as(@admin)
       visit organizations_path 
       click_on 'Pending'
        # click_on 'Review'
       first(:link , "Review").click
       click_on 'Approve'

       expect(page.body).to have_text 'kevin has been approved' 
    end

end
