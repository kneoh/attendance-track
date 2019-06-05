class User < ApplicationRecord
  has_and_belongs_to_many :sessions
  has_and_belongs_to_many :organisations
  has_many :attendees
  has_many :events, through: :attendees
  has_many :roles, through: :attendees
  accepts_nested_attributes_for :attendees, reject_if: :all_blank, allow_destroy: true
end
