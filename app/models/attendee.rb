class Attendee < ApplicationRecord
  belongs_to :event
  belongs_to :user
  belongs_to :role
end
