class Passenger < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me, :household_id
  has_many :luggage
  has_many :flight
  validates :name, :uniqueness => true
  validates :name, :format => { :with => /[a-zA-Z\s]/,
       :message => " - Only letters (and spaces) allowed" }
  validates :email, :uniqueness => true
  belongs_to :household
end
