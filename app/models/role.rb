class Role < ApplicationRecord
  has_and_belongs_to_many :privileges
  has_many :attendees
  has_many :events, through: :attendees
  has_many :users, through: :attendees
  accepts_nested_attributes_for :attendees, reject_if: :all_blank, allow_destroy: true
end
