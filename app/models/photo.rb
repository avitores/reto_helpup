class Photo < ApplicationRecord

  belongs_to :album

  mount_uploader :image, ImageUploader

  validates :name, presence: true, length: {minimum: 2}
  validates :image, presence: true
  validates :image, file_size: { less_than: 1.megabytes }
    
end
