require "test_helper"

class PlantsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/plants.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Plant.count, data.length
  end
end
