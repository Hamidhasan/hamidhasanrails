ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.(yml|csv) for all tests in alphabetical order.
  #
  # Note: You'll currently still have to declare fixtures explicitly in integration tests
  # -- they do not yet inherit this setting
  fixtures :all

  # Add more helper methods to be used by all tests here...
  
  class ActionDispatch::IntegrationTest
    def login
      Passenger.create(email: 'hamidhasan14@gmail.com',
                  password: 'test1234')
      visit new_user_session_path
      fill_in 'Email', with: 'hamidhasan14@gmail.com'
      fill_in 'Password', with: 'test1234'
      click_button 'Sign in'
    end
  
    def logout
      click_link "Logout"
    end
  end
  
end
