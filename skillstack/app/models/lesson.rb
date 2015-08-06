class Lesson < ActiveRecord::Base
  validates :title, presence: true
  validates :title, uniqueness: true
  validates :description, presence: true
  validates :description, length: { maximum: 350 }
  validates :location, presence: true
  validates :cost, presence: true
  mount_uploader :image_one, AvatarUploader
  mount_uploader :image_two, AvatarUploader
  mount_uploader :image_three, AvatarUploader

  geocoded_by :location
  after_validation :geocode

  belongs_to :teacher, class_name: 'User', foreign_key: 'teacher_id'
  has_many :bookings, dependent: :destroy
  belongs_to :category
  acts_as_votable
end
