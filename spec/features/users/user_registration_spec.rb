# This file contains the RSpec test for user registration feature.
# It tests whether people can successfully register as users on the website.
# The test visits the root path, clicks on the 'Sign up' button, fills in the email address and password fields,
# and clicks on the 'Sign up' button again. Finally, it expects the current path to be the login path.
require 'rails_helper'
require 'capybara/rspec'

RSpec.describe 'User registration', type: :feature do

    it "people can register" do 
        visit root_path
        click_on 'Sign up'
        fill_in 'Email address', with: 'example@email.com'
        fill_in 'Password', with: 'Example'
        fill_in 'Password confirmation', with:'Example'
        
        click_button 'Sign up'
       

        expect(current_path).to eq root_path
    end 

end 
