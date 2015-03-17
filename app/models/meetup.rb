class Meetup < ActiveRecord::Base
  has_many :users, through: :usersmeetups
  has_many :usersmeetups
end
