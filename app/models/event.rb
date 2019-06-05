class Event < ApplicationRecord
  has_many :sessions
  has_many :attendees
  has_many :users, through: :attendees
  has_many :roles, through: :attendees
  accepts_nested_attributes_for :attendees, reject_if: :all_blank, allow_destroy: true
end
