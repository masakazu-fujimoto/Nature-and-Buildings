class Photo < ApplicationRecord
  has_one_attached :image
  has_many :photos, dependent: :destroy

  validates :name, presence: true
  validates :text, presence: true
  validates :image, presence: true
end
