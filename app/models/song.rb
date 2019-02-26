class Song < ApplicationRecord
  validates :title, presence: true

  has_many :events_songs
  has_many :events, through: :events_songs
end