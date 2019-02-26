class Performance < ApplicationRecord

  belongs_to :event
  belongs_to :events_song

  validates :events_song, uniqueness: { scope: :event_id }
  validates :singer, presence: true
end