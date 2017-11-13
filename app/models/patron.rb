class Patron < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # devise :database_authenticatable, :registerable, :confirmable,
  #        :recoverable, :rememberable, :trackable, :validatable
  # self.abstract_class = true
  devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable
  
  mount_uploader :avatar, ImageUploader

  validates :name, presence: true, length: {minimum: 2}
  validates :avatar, file_size: { less_than: 1.megabytes }

end
