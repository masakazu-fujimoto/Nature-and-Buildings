class Photo < ApplicationRecord
  has_one_attached :image
  belongs_to :user
  has_many :comments, dependent: :destroy

  validates :name, presence: true
  validates :text, presence: true
  validates :image, presence: true

  def self.search(search)
    if search != ""
      Photo.where('name LIKE(?)', "%#{search}%")
    else
      Photo.none
    end
  end

end
