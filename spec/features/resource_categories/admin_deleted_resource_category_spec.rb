require 'rails_helper'

RSpec.describe 'Deleting a Resource Category', type: :feature do

    before do
        @admin = create('user', :admin)
        @resource_category = create(:resource_category)
    end
      
    it 'can apporve an org' do
    #      User Input Part
      
       log_in_as(@admin)
       visit resource_categories_path 
       first(:link , @resource_category.name).click
        # click_on 'Review'
       
       click_on 'Delete'
      
       expect(current_path).to eq resource_categories_path 
    
    end

end
