class Photo < ApplicationRecord
  has_one_attached :image
  has_many :comments, dependent: :destroy

  validates :name, presence: true
  validates :text, presence: true
  validates :image, presence: true

  def self.looks(search, word)
    if search == "perfect_match"
      @photo = Photo.where("name LIKE?","#{word}")
    elsif search == "forward_match"
      @photo = Photo.where("name LIKE?","#{word}%")
    elsif search == "backward_match"
      @photo = Photo.where("name LIKE?","%#{word}")
    elsif search == "partial_match"
      @photo = Photo.where("name LIKE?","%#{word}%")
    else
      @photo = Photo.all
    end
  end
end
