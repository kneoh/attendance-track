# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

%w[User
  Trainer
  Supervisor
  Administrator
].each do |p|
  Privilege.create(title: p)
end

%w[Guest
  Participant
].each do |p|
  Role.create(title: p, privilege_ids: 1)
end

%w[Speaker
  Guest\ Trainer
  Junior\ Trainer
  Senior\ Trainer
].each do |p|
  Role.create(title: p, privilege_ids: 2)
end

%w[Content\ Coordinator
].each do |p|
  Role.create(title: p, privilege_ids: 3)
end

%w[Administrator
].each do |p|
  Role.create(title: p, privilege_ids: 4)
end

%w[
  Active\ Listening
  Coaching
  Group\ Dynamics
  Leadership
  Motivation
].each do |p|
  Topic.create(title: p)
end

%w[
  BEST
  EMSA
  IFMSA
  EPSA  
].each do |p|
  Organisation.create(abbr: p)
end

Event.create!(name: 'Leadership Summer School 2019')
Event.create!(name: 'BTD Communication')

Session.create!(title: 'Leadership 101', event_id: 1, topic_ids: [3,4])
Session.create!(title: 'Silent Leader', event_id: 1, topic_ids: 1)

User.create!(full_name: 'Paul dR', email: 'pdr@', organisation_ids: [2,3], audiences_attributes: [{event_id: 1, role_id: 2}])
User.create!(full_name: 'Mark Hamil', organisation_ids: 1, audiences_attributes: [{event_id: 1, role_id: 5}])
User.create!(full_name: 'Simon Templar', organisation_ids: 4, audiences_attributes: [{event_id: 1, role_id: 3}])
User.create!(full_name: 'Sarah Connors', audiences_attributes: [{event_id: 1, role_id: 3},{event_id: 2, role_id: 5}])
User.create!(full_name: 'Gwen Parker', organisation_ids: 1, audiences_attributes: [{event_id: 1, role_id: 2},{event_id: 1, role_id: 4}])