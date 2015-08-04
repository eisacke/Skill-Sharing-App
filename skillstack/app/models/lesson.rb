class Lesson < ActiveRecord::Base
  validates :title, presence: true
  mount_uploader :image_one, AvatarUploader
  mount_uploader :image_two, AvatarUploader
  mount_uploader :image_three, AvatarUploader

  geocoded_by :location
  after_validation :geocode

  belongs_to :teacher, class_name: 'User', foreign_key: 'teacher_id'
  has_many :bookings
  belongs_to :category
end
