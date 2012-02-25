class Flight < ActiveRecord::Base
  belongs_to :passenger
  validates :departure, :length => { :minimum => 3 }
  validates :arrivale, :length => { :minimum => 3 } #3-letter airport codes
end
