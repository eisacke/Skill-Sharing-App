class Booking < ActiveRecord::Base
  belongs_to :lesson, dependent: :destroy
  belongs_to :student, class_name: 'User', foreign_key: 'student_id'
end
