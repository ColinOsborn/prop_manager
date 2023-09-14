class Violation < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true

  mount_uploader :thumb_image, ViolationUploader
  mount_uploader :main_image, ViolationUploader
end
