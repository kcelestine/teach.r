class Course < ActiveRecord::Base
	has_many :sessions
	# belongs to teacher sti not student
	belongs_to :user
end
