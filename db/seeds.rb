# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts 'CREATING ROLES'
Role.create([
  { :name => 'admin' }, 
  { :name => 'manager' },
  { :name => 'user' }
])
puts 'SETTING UP DEFAULT USER LOGIN'
user = User.create! :name => 'Admin User', :email => 'admin@example.com', :password => 'pleaseme', :password_confirmation => 'pleaseme'
puts 'New user created: ' << user.name
user2 = User.create! :name => 'Manager User', :email => 'manager@example.com', :password => 'pleaseme', :password_confirmation => 'pleaseme'
puts 'New user created: ' << user2.name
user3 = User.create! :name => 'Normal User', :email => 'user@example.com', :password => 'pleaseme', :password_confirmation => 'pleaseme'
puts 'New user created: ' << user3.name
user.add_role :admin
user2.add_role :manager
user3.add_role :user
