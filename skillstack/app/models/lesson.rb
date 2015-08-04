class Lesson < ActiveRecord::Base
  mount_uploader :image_one, AvatarUploader
  mount_uploader :image_two, AvatarUploader
  mount_uploader :image_three, AvatarUploader

  belongs_to :teacher, class_name: 'User', foreign_key: 'teacher_id'
  has_many :bookings
  belongs_to :category
end
