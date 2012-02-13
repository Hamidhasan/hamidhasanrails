class Passenger < ActiveRecord::Base
  has_many :flight
end
