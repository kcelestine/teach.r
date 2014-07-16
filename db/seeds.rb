teachers = [
  Teacher.create!(name: 'Khadijah TheGreat',
                  email: 'k@c.co',
                  password: "yesyesyes",
                  password_confirmation: "yesyesyes"),
  Teacher.create!(name: 'Maurisa Charles',
                  email: 'm@c.co',
                  password: "yesyesyes",
                  password_confirmation: "yesyesyes"),
  Teacher.create!(name: 'Keisha Celestine',
                  email: 'ke@c.co',
                  password: "yesyesyes",
                  password_confirmation: "yesyesyes"),
  Teacher.create!(name: 'Claudette Charles',
                  email: 'c@c.co',
                  password: "yesyesyes",
                  password_confirmation: "yesyesyes"),
  Teacher.create!(name: 'Lucy Pierrre',
                  email: 'l@p.co',
                  password: "yesyesyes",
                  password_confirmation: "yesyesyes")
]

teachers.each do |teacher|
  courses = Array.new
  1.upto(3) do |num_of_course|
    @course = Course.create!(name: Generator.name_of("course", num_of_course), user_id: teacher.id)
    courses.push(@course)
  end # end courses push
  courses.each do |course|
    sessions = Array.new
    students = Array.new
    1.upto(10) do |num_of_session_student|
    sessions.push(Session.create!(name: Generator.name_of("session", num_of_session_student),
                    course_id: course.id,
                    sequence_num: num_of_session_student,
                    date: Generator.date("June", num_of_session_student, "2014")))
    student = Student.create!(name: Generator.name_of("student", num_of_session_student), 
                  email: Generator.student_email(Generator.num),
                  password: "p@s$w0rd",
                  password_confirmation: "p@s$w0rd"
                  ) 
    students.push(student)
    @course.students.push(student)
    end # end session/students push
    sessions.each do |session|
      questions = Array.new
      1.upto(5) do |num_of_question|
        questions.push(Question.create!(question: Generator.name_of("question", num_of_question), answer: Generator.paragraph(5), pending: false, session_id: session.id ))
      end # end questions push
    end # end sessions.each
  end # end courses.each
end # end teachers.each
