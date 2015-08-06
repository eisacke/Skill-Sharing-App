class Booking < ActiveRecord::Base
  validates :time, presence: true
  validates :date, presence: true

  belongs_to :lesson
  belongs_to :student, class_name: 'User', foreign_key: 'student_id'
end
