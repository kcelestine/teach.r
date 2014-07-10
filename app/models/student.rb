class Student < User
  has_many_and_belongs_to :courses
end
