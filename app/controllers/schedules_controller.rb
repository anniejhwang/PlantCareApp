class SchedulesController < ApplicationController
  def index
    @schedules = Schedule.all
    render :index
  end
end
