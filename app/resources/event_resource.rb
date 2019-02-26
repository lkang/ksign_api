class EventResource < ApplicationResource
  attributes :event_date, :location

  has_many :events_songs
  has_many :performances
  has_many :songs
end