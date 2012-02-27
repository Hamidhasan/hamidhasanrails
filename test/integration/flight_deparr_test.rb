require 'test_helper'

class FlightDeparrTest < ActionDispatch::IntegrationTest
  test "departure_length" do
    
     visit flights_path
     click_link "New Flight"
     fill_in "Departure", with: "X"
     fill_in "Arrival", with: "ABC"
     click_button "Create Flight"
     
     error_message = "Departure is too short (minimum is 3 characters)"
     assert page.has_content?(error_message)
   end
   
  test "arrival_length" do
    
     visit flights_path
     click_link "New Flight"
     fill_in "Departure", with: "ABC"
     fill_in "Arrival", with: "X"
     click_button "Create Flight"
     
     error_message = "Arrival is too short (minimum is 3 characters)"
     assert page.has_content?(error_message)
   end   
end
