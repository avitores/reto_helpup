class Album < ApplicationRecord
  
  belongs_to :user
  
  has_many :photos, :dependent => :destroy

  validates :name, presence: true, length: {minimum: 2}
  
end
