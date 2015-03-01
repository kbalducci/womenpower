# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = User.create(first_name: Faker::Name.first_name,
                  last_name: Faker::Name.last_name,
                  email: 'test@test.com',
                  password: 'password')

student = Category.create(name: 'student')
professional = Category.create(name: 'professional')
personal = Category.create(name: 'personal')

time_management = Issue.create(name: 'time-management',
                              category_id: student.id)
learning_curve = Issue.create(name: 'learning-curve',
                              category_id: student.id)
discrimination = Issue.create(name: 'discrimination',
                              category_id: professional.id)
impostor = Issue.create(name: 'impostor syndrome',
                        category_id: professional.id)
balance = Issue.create(name: 'work-life balance',
                      category_id: personal.id)
judgment = Issue.create(name: 'judgment',
                        category_id: personal.id)

time_insp = Inspiration.new(name: 'Maya Angelou',
                                 quote: 'All great achievements require time',
                                 user_id: user.id,
                                 category_id: student.id,
                                 issue_id: time_management.id)
time_insp.picture = File.new(Rails.root.join('app', 'assets', 'images', 'angelou.jpg'))
time_insp.save!

learning_insp = Inspiration.new(name: 'Alison Pincus',
                                quote: 'Surround yourself with a trusted and loyal team. It makes all the difference.',
                                user_id: user.id,
                                category_id: student.id,
                                issue_id: learning_curve.id )
learning_insp.picture = File.new(Rails.root.join('app', 'assets', 'images', 'pincus.jpg'))
learning_insp.save!

discrimination_insp = Inspiration.new(name: 'Madeline Albright',
                                      quote: "No country can build a healthy and growing economy or establish a true democracy if half its people are held back, pushed aside, left behind, or beaten up.",
                                      user_id: user.id,
                                      category_id: professional.id,
                                      issue_id: discrimination.id)
discrimination_insp.picture = File.new(Rails.root.join('app', 'assets', 'images', 'albright.jpg'))
discrimination_insp.save!

impostor_insp = Inspiration.new(name: 'Julie Pagano',
                                quote: 'The biggest piece of advice I can give you is “build a party.” Create a support system of people you care about, that you trust, that you respect. That care about you. These people are your support system. When you have a bad day with impostor syndrome, these are the people you’re going to talk to.',
                                user_id: user.id,
                                category_id: professional.id,
                                issue_id: impostor.id)
impostor_insp.picture = File.new(Rails.root.join('app', 'assets', 'images', 'pagano.jpg'))
impostor_insp.save!

balance_insp = Inspiration.new(name: 'Sheryl Sandberg',
                              quote: "You know, there has never been a 24-hour period in five years when I have not responded to e-mail at Facebook. I am not saying it’s easy. I work long hours.I am saying that I was able to mold those hours around the needs of my family, and that matters. And I really encourage other people at Facebook to mold hours around themselves.",
                              user_id: user.id,
                              category_id: personal.id,
                              issue_id: balance.id)
balance_insp.picture = File.new(Rails.root.join('app', 'assets', 'images', 'sandberg.jpg'))
balance_insp.save!

judgment_insp = Inspiration.new(name: 'Tina Fey',
                              quote: "When faced with sexism or ageism or lookism or even really aggressive Buddhism, ask yourself the following question: Is this person in between me and what I want to do? If the answer is no, ignore it and move on. Your energy is better used doing your work and outpacing people that way. Then, when you're in charge, don't hire the people who were jerky to you",
                              user_id: user.id,
                              category_id: personal.id,
                              issue_id: judgment.id)
judgment_insp.picture = File.new(Rails.root.join('app', 'assets', 'images', 'fey.jpg'))
judgment_insp.save!


