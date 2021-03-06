class Playlist < ApplicationRecord
  has_many :playlist_resources, dependent: :destroy
  has_many :resources, through: :playlist_resources
  has_many :taggings, dependent: :destroy
  has_many :tags, through: :taggings, source: :playlist
end
