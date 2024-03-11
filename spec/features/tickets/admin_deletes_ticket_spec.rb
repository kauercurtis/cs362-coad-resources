require 'rails_helper'

RSpec.describe 'Deleting a Ticket', type: :feature do
  before do
    @admin = create(:user, :admin)
    @region = create(:region)
    @resource_category = create(:resource_category)

    @ticket = create(:ticket, name: 'kevin_ticket' , description: "fake_description", region: @region, resource_category: @resource_category) 
  end
      
  it 'can delete ticket ' do
    
      
    log_in_as(@admin)
    visit dashboard_path
    first(:link , 'kevin_ticket').click
   
       
    click_on 'Delete'
      
    expect(page.body).to have_text'was deleted' 
    
  end
end
