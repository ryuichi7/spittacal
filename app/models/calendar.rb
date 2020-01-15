require 'icalendar'

module Icalendar
  def new
    Icalendar::Calendar.new
  end
end

class Calendar < ApplicationRecord
  has_many :bookings
  belongs_to :resource

  include Icalendar
end
