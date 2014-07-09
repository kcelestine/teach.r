class Session < ActiveRecord::Base
  belongs_to :course
  has_many :questions
  
  validates_presence_of :name, :date, :sequence_num#, :course_id

  def validate_duplicate_name
    @sessions = Session.all
  end
end
