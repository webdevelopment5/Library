# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(name: 'Administrator', password: '12345678', email: 'admin@admin.com', role: 'admin')
User.create(name: 'Manager', password: '12345678', email: 'manager@manager.com', role: 'manager')
User.create(name: 'Reader', password: '12345678', email: 'reader@reader.com', role: 'reader')