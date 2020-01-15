require 'icalendar'

module Icalendar
  class Calendar < ApplicationRecord
    has_many :bookings
    belongs_to :resource
  end
end
