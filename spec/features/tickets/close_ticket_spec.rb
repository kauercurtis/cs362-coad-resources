require 'rails_helper'

RSpec.describe 'Closing a ticket', type: :feature do
    before do
        @admin = create(:user, :admin)
        @region = create(:region)
        @organization = create(:organization,name: 'jake' )
        @user = create('user', :organization_approved )
        @resource_category = create(:resource_category)
    
        @ticket = create(:ticket, name: 'kevin_ticket' , description: "fake_description", region: @region, resource_category: @resource_category) 
      end
    it 'user can close a ticket' do
        log_in_as(@admin)
        visit root_path
        
        click_on 'Dashboard'
        first(:link , 'kevin_ticket').click
        click_on 'Close'
        first(:link , 'kevin_ticket').click
        expect(page.body).to_not have_text'close' 
    end 

    

end
