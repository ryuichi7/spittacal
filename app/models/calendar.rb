require 'icalendar'

# module Icalendar
#   Icalendar::Calendar.new
# end

class Calendar < ApplicationRecord
  has_many :bookings
  belongs_to :resource

  # include Icalendar
end
