class Booking < ActiveRecord::Base
  belongs_to :lesson
  belongs_to :student, class_name: 'User', foreign_key: 'student_id'
end
