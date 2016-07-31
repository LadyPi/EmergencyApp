# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
Contact.destroy_all
Event.destroy_all
# User.destroy_all
Message.destroy_all
Task.destroy_all

  
  contacts = Contact.create([{ first_name: 'Trudy', last_name: 'Sana', email: 'Trudy@gmail.com', number: '16501231234' }, { first_name: 'Peter', last_name: 'Sila', email: 'Sila@gmail.com', number: '16501321234' }])
  events = Event.create([{ title: 'Earthquake'}, { title: 'Grandma'}])
  users = User.create([{ first_name: 'Jenna', last_name: 'Jedi', email: 'Jedi@gmail.com', location: '123 Set Court, San Francisco, Ca', password: "qwe"}, { first_name: 'Tom', last_name: 'Isla', email: 'Tessi@gmail.com', location: '14 Jona Court, San Francisco, Ca', password: "qwe"}])
  messages = Message.create([{ text: 'I need help.' }, { text: 'Safety First.' }])
  tasks = Task.create([{ step: 'Do this.' }, { step: 'Do that.' }])

