class Session < ActiveRecord::Base
  belongs_to :course
  has_many :questions

  validates_presence_of :name, :date, :sequence_num, :course_id
  validates_uniqueness_of :sequence_num,  { :scope =>  :course_id }
  validates_uniqueness_of :date, { :scope => :course_id }
  validates_uniqueness_of :name, { :scope => :course_id }

  #validates_uniqueness_of :model_name, :scope => {:brand_id, :fuel_type_id}
end
