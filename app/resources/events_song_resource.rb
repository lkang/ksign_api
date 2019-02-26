class EventsSongResource < ApplicationResource
  has_one :event
  has_one :song

  has_many :performances
end