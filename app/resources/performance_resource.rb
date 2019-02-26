class PerformanceResource < ApplicationResource
  attributes :order, :singer, :status

  has_one :event
  has_one :events_song
end