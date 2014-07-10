class CreateCoursesUsers < ActiveRecord::Migration
  def change
    create_table :courses_users do |t|
      t.references :course, :user
    end
    add_index :courses_users, [:course_id, :user_id]
  end
end
