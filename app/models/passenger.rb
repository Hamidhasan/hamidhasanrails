class Passenger < ActiveRecord::Base
  has_many :flights
end
