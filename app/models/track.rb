class Track < ApplicationRecord
  belongs_to :album
  has_one_attached :audio_file

  has_many :playlist_tracks, dependent: :destroy
  has_many :playlists, through: :playlist_tracks

  def artist
    album.artist
  end
end
