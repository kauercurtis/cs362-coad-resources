require 'rails_helper'

RSpec.describe 'Updating an Organization', type: :feature do

    before do
        @admin = create('user', :admin)
        @user = create('user', :organization_approved)
    end
      
    it 'can update an org' do
    #      User Input Part
      
       log_in_as(@user)

       visit root_path
       click_on 'Dashboard'
       click_on 'Edit Organization'
    #     # click_on 'Review'
    #    first(:link , "Review").click
    #    click_on 'Update'

       puts(page.body)
      
    #    expect(current_path).to eq organizations_path
        
    end

end
