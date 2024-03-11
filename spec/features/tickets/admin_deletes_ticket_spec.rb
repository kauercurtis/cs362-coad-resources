require 'rails_helper'

RSpec.describe 'Deleting a Ticket', type: :feature do
  before do
        @admin = create('user', :admin)
        @ticket = create(name: "fake_test_name", phone: "1234567890", description: "fake_description", region_id: "fake_region_id", resource_category_id: "fake_resource_category_id") 
    end
      
    it 'can delete ticket ' do
    #      User Input Part
      
       log_in_as(@admin)
       visit dashboard_path
       first(:link , ticket.name).click
        # click_on 'Review'
       
       click_on 'Delete'
      
       expect(current_path).to eq dashboard_path
    
    end
end
