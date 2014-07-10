class Course < ActiveRecord::Base
	has_many :sessions
	belongs_to :user # belongs to teacher sti not student

	validates_presence_of :name, :user_id
	validates_uniqueness_of :name

end
