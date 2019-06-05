class Role < ApplicationRecord
<<<<<<< HEAD
  has_and_belongs_to_many :privileges
  has_many :attendees
  has_many :events, through: :attendees
  has_many :users, through: :attendees
  accepts_nested_attributes_for :attendees, reject_if: :all_blank, allow_destroy: true
=======
  has_many :audiences
  has_many :users, through: :audiences
  has_many :events, through: :audiences
  has_and_belongs_to_many :privileges
  accepts_nested_attributes_for :audiences
>>>>>>> 9b81d55d9c3f7e9001dfa3b8f5c384baacf19bb4
end
