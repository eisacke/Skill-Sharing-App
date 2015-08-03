class User < ActiveRecord::Base
  has_many :students, class_name: 'User', foreign_key: 'teacher_id'
  belongs_to :teacher, class_name: 'User'
  has_many :lessons, class_name: 'Lesson', foreign_key: 'teacher_id'
  has_many :bookings, class_name: 'Booking', foreign_key: 'student_id'
end
