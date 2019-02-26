class SongResource < ApplicationResource
  attributes :title,
    :artist,
    :tab_url,
    :audio_url,
    :video_url

  has_many :events
  has_many :events_songs
end