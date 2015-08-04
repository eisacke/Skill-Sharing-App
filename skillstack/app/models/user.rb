class User < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader

  has_secure_password
  has_many :lessons, class_name: 'Lesson', foreign_key: 'teacher_id'
  has_many :bookings, class_name: 'Booking', foreign_key: 'student_id'

  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end
  
end
