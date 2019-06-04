class User < ApplicationRecord
  has_many :audiences
  has_many :roles, through: :audiences
  has_many :events, through: :audiences
  has_and_belongs_to_many :sessions
  has_and_belongs_to_many :organisations  
  accepts_nested_attributes_for :audiences
end
