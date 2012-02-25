class Passenger < ActiveRecord::Base
  has_many :luggage
  has_many :flight
  validates :name, :uniqueness => true
  validates :email, :uniqueness => true
end
