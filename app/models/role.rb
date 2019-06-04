class Role < ApplicationRecord
  has_many :audiences
  has_many :users, through: :audiences
  has_many :events, through: :audiences
  has_and_belongs_to_many :privileges
  accepts_nested_attributes_for :audiences
end
