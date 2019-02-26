class Event < ApplicationRecord
  has_many :events_songs
  has_many :songs, through: :events_songs

  has_many :performances
end