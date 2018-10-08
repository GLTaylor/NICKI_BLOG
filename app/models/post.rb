class Post < ApplicationRecord
  # mount_uploader :photo, PhotoUploader

  validates :name, presence: true, uniqueness: true
  validates :body, presence: true

end
