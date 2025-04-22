class Playlist < ApplicationRecord
  belongs_to :user
  has_one_attached :cover_image

  has_many :playlist_tracks, dependent: :destroy
  has_many :tracks, through: :playlist_tracks

  validates :title, presence: true
end
