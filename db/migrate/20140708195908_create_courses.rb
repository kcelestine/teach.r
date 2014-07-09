class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
			t.string :name
			t.belongs_to :user
			t.string :course_code
      t.date :start_date
      t.date :end_date
    end
  end
end
