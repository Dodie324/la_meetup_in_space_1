class UserMeetup < ActiveRecord::Base
  validates :user, uniqueness: { scope: :meetup }

  belongs_to :user
  belongs_to :meetup
end
