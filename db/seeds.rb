# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = User.create(first_name: Faker::Name.first_name,
                  last_name: Faker::Name.last_name,
                  email: Faker::Internet.email,
                  password: Faker::Internet.password(8))

student = Category.create(name: 'student')
time_management = Issue.create(name: 'time-management',
                     category_id: student.id)
inspiration = Inspiration.new(name: 'Sheryl Sandberg',
                                 quote: 'Hello, awesome lady!!!',
                                 user_id: user.id,
                                 category_id: student.id,
                                 issue_id: time_management.id)

inspiration.picture = File.new(Rails.root.join('app', 'assets', 'images', 'sandberg.jpg'))
# inspiration.picture = File.new(Rails.root.join('public', 'images', 'ssandberg.jpg'))
inspiration.save!

