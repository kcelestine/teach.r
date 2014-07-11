class Student < User
  has_and_belongs_to_many :courses, :join_table => "courses_students"#, association_foreign_key: :user_id
end
