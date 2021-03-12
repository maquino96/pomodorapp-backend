# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

will = User.create(name: 'Will')
matt = User.create(name: 'Matt')

wt1 = will.tasks.create(name: 'Work on wireframe')
wt2 = will.tasks.create(name: 'Draw ERD')
wt3 = will.tasks.create(name: 'Submit project pitch')

ws1 = will.study_sessions.create()
ws1.study_tasks.create(task_id: 1)
ws1.study_tasks.create(task_id: 2)
ws1.study_tasks.create(task_id: 3)
ws1.update(created_at: DateTime.now - 4.days)
ws1.update(time_spent: 4500)

wt4 = will.tasks.create(name: 'Create database')
wt5 = will.tasks.create(name: 'Migrate database')
wt6 = will.tasks.create(name: 'Seed database')

ws2 = will.study_sessions.create()
ws2.study_tasks.create(task_id: 4)
ws2.study_tasks.create(task_id: 5)
ws2.study_tasks.create(task_id: 6)
ws2.update(created_at: DateTime.now - 3.days)
ws2.update(time_spent: 2400)

will.tasks.create(name: "Work on models")
will.tasks.create(name: "Work on controllers")
will.tasks.create(name: "Build frontend")

matt.tasks.create(name: 'Build User Story')
matt.tasks.create(name: 'Work on ERD')
matt.tasks.create(name: 'Discuss app features')

ms1 = matt.study_sessions.create()
ms1.study_tasks.create(task_id: 10)
ms1.study_tasks.create(task_id: 11)
ms1.study_tasks.create(task_id: 12)
ms1.update(created_at: DateTime.now - 5.days)
ms1.update(time_spent: 4000)

matt.tasks.create(name: 'Create frontend repo')
matt.tasks.create(name: 'Create backend repo')
matt.tasks.create(name: 'Add partner to repos')

ms2 = matt.study_sessions.create()
ms2.study_tasks.create(task_id: 13)
ms2.study_tasks.create(task_id: 14)
ms2.study_tasks.create(task_id: 15)
ms2.update(created_at: DateTime.now - 4.days)
ms2.update(time_spent: 3100)

matt.tasks.create(name: 'Unmute Mic')
matt.tasks.create(name: 'Finish HTML')
matt.tasks.create(name: 'Polish CSS')

will.tasks.create(name: "Laundry")
will.tasks.create(name: "Dishes")
will.tasks.create(name: "Groceries")

ws3= will.study_sessions.create()
ws3.study_tasks.create(task_id: 19)
ws3.study_tasks.create(task_id: 20)
ws3.study_tasks.create(task_id: 21)
ws3.update(created_at: DateTime.now - 1.days)
ws3.update(time_spent: 900)

matt.tasks.create(name: "Go for a walk")
matt.tasks.create(name: "Work out")
matt.tasks.create(name: "Get chicken")

ms3 = matt.study_sessions.create()
ms3.study_tasks.create(task_id: 22)
ms3.study_tasks.create(task_id: 23)
ms3.study_tasks.create(task_id: 24)
ms3.update(created_at: DateTime.now - 1.days)
ms3.update(time_spent: 1400)

puts "All seeded"