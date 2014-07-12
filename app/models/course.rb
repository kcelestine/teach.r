class Course < ActiveRecord::Base
	has_many :sessions
	belongs_to :teacher # belongs to teacher sti not student
	has_and_belongs_to_many :students, :join_table => "courses_students"
	validates_presence_of :name, :user_id
	validates_uniqueness_of :name

end
