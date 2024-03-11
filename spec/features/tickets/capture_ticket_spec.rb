require 'rails_helper'

RSpec.describe 'Capturing a ticket', type: :feature do
    before do
        @admin = create(:user, :admin)
        @region = create(:region)
        @resource_category = create(:resource_category)
    
        @ticket = create(:ticket, name: 'kevin_ticket' , description: "fake_description", region: @region, resource_category: @resource_category) 
      end
end
