require 'icalendar'

module Gem
  def new
    Icalendar::Calendar.new
  end
end

class Calendar < ApplicationRecord
  has_many :bookings
  belongs_to :resource

  include Gem
end
