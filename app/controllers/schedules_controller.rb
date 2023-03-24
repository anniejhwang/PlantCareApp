class SchedulesController < ApplicationController
  def index
    @schedules = Schedule.all
    render :index
  end

  def create
    @schedule = Schedule.create(
      plant_id: params[:plant_id],
      user_id: current_user.id,
      image_url: params[:image_url],
      watering_start_date: params[:watering_start_date],
    )
    render :show
  end

  def edit
    @schedule = Schedule.find_by(id: params[:id])
    render :edit
  end

  def update
    @schedule = Schedule.find_by(id: params[:id])
    @schedule.update(
      plant_id: params[:schedule][:plant_id],
      user_id: params[:schedule][:user_id],
      image_url: params[:schedule][:image_url],
      watering_start_date: params[:schedule][:watering_start_date],
    )
    redirect_to "/schedules"
  end

  def destroy
    @schedule = Schedule.find_by(id: params[:id])
    @schedule.destroy
    redirect_to "/schedules", status: :see_other
  end
end
