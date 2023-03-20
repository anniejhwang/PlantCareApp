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

  test "show" do
    get "/plants/#{Plant.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "name", "description", "amount_of_sun", "days_to_water", "created_at", "updated_at", "image_url"], data.keys
  end

  test "update" do
    plant = Plant.first
    patch "/plants/#{plant.id}.json", params: { name: "Updated name" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated name", data["name"]
    assert_equal plant.description, data["description"]
    assert_equal plant.amount_of_sun, data["amount_of_sun"]
    assert_equal plant.days_to_water, data["days_to_water"]
    assert_equal plant.image_url, data["image_url"]
  end

  test "destroy" do
    assert_difference "Plant.count", -1 do
      delete "/plants/#{Plant.first.id}.json"
      assert_response 200
    end
  end
end
