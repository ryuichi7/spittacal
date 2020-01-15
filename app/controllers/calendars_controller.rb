require 'icalendar'

class CalendarsController < ApplicationController
  def new
    @calendar = Icalendar::Calendar.new
  end

  def create
    @calendar = Icalendar::Calendar.new(calendar_params)
    if @calendar.save
      redirect_to calendar_path(@calendar)
    else
      render :new
    end
  end

  def show
    set_calendar
  end

  def destroy
    set_calendar
    @calendar.destroy
    redirect_to root_path
  end

  private

  def calendar_params
    params.require(:calendar).permit(:name)
  end

  def set_calendar
    @calendar = Calendar.find_by(params[:id])
  end
end
