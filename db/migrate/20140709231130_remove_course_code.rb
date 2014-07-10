class RemoveCourseCode < ActiveRecord::Migration
  def change
    remove_column :courses, :course_code
  end
end
