class Luggage < ActiveRecord::Base
  belongs_to :passenger
  validates :weight, presence: true
end
