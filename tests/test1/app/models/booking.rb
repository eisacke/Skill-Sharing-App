class Booking < ActiveRecord::Base
  belongs_to :lesson_id
  belongs_to :teacher_id
  belongs_to :student_id
end
