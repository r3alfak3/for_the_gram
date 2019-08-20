class Gram < ApplicationRecord
	validates :message, presence: true {maximum: 140, minimum: 3}
	validates :picture, presence: true
  has_many :comments
  mount_uploader :picture, PictureUploader
	belongs_to :user
end
