class Passenger < ActiveRecord::Base
  has_many :luggage
  has_many :flight
end
