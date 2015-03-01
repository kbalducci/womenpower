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

professional = Category.create(name: 'professional')
discrimination = Issue.create(name: 'discrimination',
                              category_id: professional.id)
discrimination_insp = Inspiration.new(name: 'Madeline Albright',
                                      quote: "No country can build a healthy and growing economy or establish a true democracy if half its people are held back, pushed aside, left behind, or beaten up.",
                                      user_id: user.id,
                                      category_id: professional.id,
                                      issue_id: discrimination.id)
discrimination_insp.picture = File.new(Rails.root.join('app', 'assets', 'images', 'albright.jpg'))
discrimination_insp.save!

personal = Category.create(name: 'personal')
balance = Issue.create(name: 'work-life balance',
                              category_id: personal.id)
balance_insp = Inspiration.new(name: 'Leslie Knope',
                              quote: "We need to remember what’s important in life: friends, waffles, work. Or waffles, friends, work. Doesn’t matter, but work is third.",
                              user_id: user.id,
                              category_id: personal.id,
                              issue_id: balance.id)
balance_insp.picture = File.new(Rails.root.join('app', 'assets', 'images', 'knope.jpg'))
balance_insp.save!


