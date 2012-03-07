require 'test_helper'

class PassengerTest < ActiveSupport::TestCase
  test "username format" do
    myPerson = {name: "1234", email: "test@test.com"}
    passenger = Passenger.new(myPerson)
    assert !passenger.valid?
  end
  
  test "username uniqueness" do
    myPerson = {name: "hello", email: "test@test.com"}
    second = {name: "hello", email: "test2@test.com"}
    passenger = Passenger.new(myPerson)
    passenger2 = Passenger.new(second)
    assert passenger2.valid?
  end
  
end
