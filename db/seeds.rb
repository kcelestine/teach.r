# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

instructor = Teacher.create(name: 'Khadijah TheGreat', email: 'k@c.co',
password: "yesyes", password_confirmation: "yesyes")

student = Student.create(name: 'Khadijah TheGreater', email: 'khad@c.co',
password: "yesyesno", password_confirmation: "yesyesno")

wdi = Course.create(name: "Web Dev Course", user_id: instructor.id)

first = Session.new( name: "Intro to Git", course_id: wdi.id, sequence_num: 1, date: "June 9, 2014" )
second = Session.new( name: "Intro to Ruby", course_id: wdi.id, sequence_num: 2, date: "June 10, 2014" )
third = Session.new( name: "Intro to Rails", course_id: wdi.id, sequence_num: 3, date: "June 11, 2014" )

Question.create(question: "Question Qustion Question", session_id: first.id )
Question.create(question: "Question Qustion Questionwef", session_id: first.id  )
Question.create(question: "Question Qustion Question22f3f", session_id: first.id  )

Question.create(question: "Question Qustion Question", session_id: second.id )
Question.create(question: "Question Qustion Questionwef", session_id: second.id  )
Question.create(question: "Question Qustion Question22f3f", session_id: second.id  )

Question.create(question: "Question Qustion Questionerqfere", session_id: third.id )
Question.create(question: "Question Qustion Questionweferfefe", session_id: third.id  )
Question.create(question: "Question Qustion Question22f3frfef", session_id: third.id  )
# create_table "questions", force: true do |t|
# t.integer "session_id"
# t.boolean "pending"
# t.string  "question"
# t.text    "answer"
# end
#
# create_table "sessions", force: true do |t|
# t.integer  "course_id"
# t.string   "name"
# t.datetime "date"
# t.integer  "sequence_num"
# end
