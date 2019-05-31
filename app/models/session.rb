class Session < ApplicationRecord
  belongs_to :event
  has_and_belongs_to_many :topics
  has_and_belongs_to_many :users
end
