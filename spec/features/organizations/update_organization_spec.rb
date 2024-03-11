require 'rails_helper'

RSpec.describe 'Updating an Organization', type: :feature do

    before do
        @admin = create('user', :admin)
        @organization = create(:organization,name: 'jake' )
        @user = create('user', :organization_approved )
       
    end
      
    it 'can update an org' do
    #      User Input Part
      
       log_in_as(@user)
       visit root_path
       click_on 'Dashboard'
       click_on 'Edit Organization'

       fill_in 'Name', with: 'kevin'
       fill_in 'Phone', with: '222-222-2222'
       fill_in 'Email', with: 'kevin@email.com'
       fill_in 'Description', with: '24'


        # click_on 'Review'
       
       click_on 'commit'

       expect(page.body).to have_text 'kevin' 

    
    end

end
