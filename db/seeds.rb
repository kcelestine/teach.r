# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

instructor = Teacher.create(name: 'Khadijah TheGreat',
                            email: 'k@c.co',
                            password: "yesyes",
                            password_confirmation: "yesyes")

teachers = [
  Teacher.create(name: 'Khadijah TheGreat',
                  email: 'k@c.co',
                  password: "yesyes",
                  password_confirmation: "yesyes"),
  Teacher.create(name: 'Maurisa Charles',
                  email: 'm@c.co',
                  password: "yesyes",
                  password_confirmation: "yesyes"),
  Teacher.create(name: 'Keisha Celestine',
                  email: 'ke@c.co',
                  password: "yesyes",
                  password_confirmation: "yesyes"),
  Teacher.create(name: 'Claudette Charles',
                  email: 'c@c.co',
                  password: "yesyes",
                  password_confirmation: "yesyes"),
  Teacher.create(name: 'Lucy Pierrre',
                  email: 'l@p.co',
                  password: "yesyes",
                  password_confirmation: "yesyes")
]

teachers.each do |teacher|
  courses = Array.new
  1.upto(3) do |num_of_course|
    courses.push(Course.create(name: Generator.name_of("course", num_of_course), user_id: teacher.id))
  end # end courses push
  courses.each do |course|
    sessions = Array.new
    students = Array.new
    1.upto(10) do |num_of_session_student|
    sessions.push(Session.create(name: Generator.name_of("session", num_of_session_student),
                    course_id: course.id,
                    sequence_num: num_of_session_student,
                    date: Generator.date("June", num_of_session_student, "2014")))
    students.push(Student.create(name: Generator.name_of("student", num_of_session_student) ) )
    end # end session/students push
    sessions.each do |session|
      questions = Array.new
      1.upto(5) do |num_of_question|
        questions.push(Question.create(question: Generator.name_of("question", num_of_question), answer: Generator.paragraph(5), session_id: session.id ))
      end # end questions push
    end # end sessions.each
  end # end courses.each
end # end teachers.each
#
# student =
# Student.create(name: 'Khadijah TheGreater',
#               email: 'khad@c.co',
#               password: "yesyesno",
#               password_confirmation: "yesyesno")
#
# wdi = Course.create(name: "Web Dev Course", user_id: instructor.id)
#
# first = Session.new( name: "Intro to Git", course_id: wdi.id, sequence_num: 1, date: "June 9, 2014" )
# second = Session.new( name: "Intro to Ruby", course_id: wdi.id, sequence_num: 2, date: "June 10, 2014" )
# third = Session.new( name: "Intro to Rails", course_id: wdi.id, sequence_num: 3, date: "June 11, 2014" )
#
# Question.create(question: "Question Qustion Question", session_id: first.id )
# Question.create(question: "Question Qustion Questionwef", session_id: first.id  )
# Question.create(question: "Question Qustion Question22f3f", session_id: first.id  )
#
# Question.create(question: "Question Qustion Question", session_id: second.id )
# Question.create(question: "Question Qustion Questionwef", session_id: second.id  )
# Question.create(question: "Question Qustion Question22f3f", session_id: second.id  )
#
# Question.create(question: "Question Qustion Questionerqfere", session_id: third.id )
# Question.create(question: "Question Qustion Questionweferfefe", session_id: third.id  )
# Question.create(question: "Question Qustion Question22f3frfef", session_id: third.id  )
