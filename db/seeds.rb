# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


u1 = User.create(name: 'Bob')
u2 = User.create(name: 'John' )
u3 = User.create(name: 'David')

u1.tasks.create(name:'Task1')
u1.tasks.create(name:'Task2')
u1.tasks.create(name:'Task3')
u1.tasks.create(name:'Task4')

u2.tasks.create(name:'Task5')
u2.tasks.create(name:'Task6')
u2.tasks.create(name:'Task7')

u3.tasks.create(name:'Task8')
u3.tasks.create(name:'Task9')

s1 = u1.study_sessions.create()
st1 = s1.study_tasks.create(task_id: 1)
st2 = s1.study_tasks.create(task_id: 2)
s1.update(time_spent: 400)

puts "All seeded"