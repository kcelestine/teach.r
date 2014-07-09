class Question < ActiveRecord::Base
  belongs_to :session

  validates_presence_of :question, :answer, :session_id,  :pending
end
