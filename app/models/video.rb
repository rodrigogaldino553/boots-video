class Video < ApplicationRecord
  has_one_attached :content
  has_one_attached :video_thumbnail

  validates :title, presence: true, length: {maximum: 20}, length: {minimum: 1}
  validates :description, presence: true, length: {maximum: 200}, length: {minimum: 1} #rich text
  validates :content, presence: true,
    content_type: ['video/mp4'],
    size: { less_than: 50.megabytes, message: 'size shuld be under 50MB!' }

  validates :video_thumbnail, presence: true,
    content_type: ['image/png', 'image/jpg', 'image/jpeg'],
    size: { less_than: 2.megabytes, message: 'size shuld be under 2MB!' }
  
end
