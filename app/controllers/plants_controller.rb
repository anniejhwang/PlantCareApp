class PlantsController < ApplicationController
  def index
    response = HTTP.get("https://perenual.com/api/species-list?page=1&key=#{Rails.application.credentials.PLANTS_API_KEY}")
    data = JSON.parse(response.body)
    render json: data

    # @plants = Plant.all
    # render :index
  end
end
