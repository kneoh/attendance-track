class Audience < ApplicationRecord
  belongs_to :event
  belongs_to :role, required: false
  belongs_to :user
end
