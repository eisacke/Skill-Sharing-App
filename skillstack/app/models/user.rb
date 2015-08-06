class User < ActiveRecord::Base
  has_secure_password
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true
  validates :bio, presence: true
  
  mount_uploader :avatar, AvatarUploader

  has_many :lessons, class_name: 'Lesson', foreign_key: 'teacher_id', dependent: :destroy
  has_many :bookings, class_name: 'Booking', foreign_key: 'student_id', dependent: :destroy

  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end
  
end
