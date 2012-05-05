class Household < ActiveRecord::Base
  has_many :passenger
  validates :address, :format => { :with => /[0-9a-zA-Z\s]/,
      :message => " - Only numbers, letters (and spaces) allowed" }
  validates :address, :uniqueness => true
  
  accepts_nested_attributes_for :passenger
  
  def currentHouse
    Household.find(current_passenger.household_id)
  end
end
