class Schedule < ApplicationRecord
  # belongs_to :plant
  def plant
    response = HTTP.get("https://perenual.com/api/species/details/#{plant_id}?key=sk-GXGt641b9737ba9db301")
    data = JSON.parse(response.body)
    return data
  end
end
