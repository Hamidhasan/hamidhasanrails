class Passenger < ActiveRecord::Base
  has_many :luggage
  has_many :flight
  validates :name, :uniqueness => true
  validates :name, :format => { :with => /[a-zA-Z\s]/,
    :message => "Only letters (and spaces) allowed" }
  validates :email, :uniqueness => true
end
