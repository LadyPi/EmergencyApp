# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
  
  contacts = Contact.create([{ first_name: 'Trudy' }, { first_name: 'Jenna' }])
  lists = List.create([{ title: 'Earthquake' }, { title: 'Grandma' }])
  users = User.create([{ first_name: 'Jenna' }, { first_name: 'Tina' }])
  messages = Message.create([{ text: 'I need help.' }, { text: 'Someone in house. Calling 911 and leaving house. Track me on GEO. Will call when safe.' }])

#   Mayor.create(name: 'Emanuel', city: cities.first)
