require "test_helper"

class PlantsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/plants.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Plant.count, data.length
  end

  test "create" do
    assert_difference "Plant.count", 1 do
      post "/plants.json", params: { name: "Monstera", description: "Monstera is a genus of 59 species of flowering plants in the arum family, Araceae, native to tropical regions of the Americas.", amount_of_sun: "bright indirect sunlight", days_to_water: "7", image_url: "http://t2.gstatic.com/licensed-image?q=tbn:ANd9GcRGNhfwW0OsamIZvrzUauT4T6tkaycXGgXtKmS3MPokIOUXjnA09t-VkmME5aZvV-ojdYN3ELtqjWghbYfUHYWFLugsqhZ05SqIvMmmktTR" }
      assert_response 200
    end
  end
end
