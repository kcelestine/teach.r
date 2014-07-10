class Question < ActiveRecord::Base
  belongs_to :session

  validates_presence_of :question, :session_id
end
