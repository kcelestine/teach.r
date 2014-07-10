class CreateCoursesStudents < ActiveRecord::Migration
  def change
    create_table :courses_students, :id => false do |t|
      t.references :course, :student
    end
    add_index :courses_students, [:course_id, :student_id]
  end
end
