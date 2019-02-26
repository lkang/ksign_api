class EventsSong < ApplicationRecord
  belongs_to :event
  belongs_to :song

  validates :song, uniqueness: { scope: :event_id }

  has_many :performances, dependent: :nullify
end