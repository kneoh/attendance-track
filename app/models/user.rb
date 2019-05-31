class User < ApplicationRecord
  has_and_belongs_to_many :roles
  has_and_belongs_to_many :sessions
  has_and_belongs_to_many :organisations
  has_and_belongs_to_many :events
end
