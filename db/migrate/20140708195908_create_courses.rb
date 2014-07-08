class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
			t.string :name
			t.belongs_to :user_id
			t.string :course_code
    end
  end
end
