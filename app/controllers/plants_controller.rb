class PlantsController < ApplicationController
  def index
    @plants = Plant.all
    render :index
  end

  def create
    @plant = Plant.create(name: params[:name], description: params[:description], amount_of_sun: params[:amount_of_sun], days_to_water: params[:days_to_water], image_url: params[:image_url])
    render :show
  end

  def show
    @plant = Plant.find_by(id: params[:id])
    render :show
  end
end
