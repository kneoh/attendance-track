class Event < ApplicationRecord
  has_many :sessions
  has_many :audiences  
  has_many :users, through: :audiences
  has_many :roles, through: :audiences
  accepts_nested_attributes_for :audiences
  
end
