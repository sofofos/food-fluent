require "test_helper"

class DishesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get dishes_create_url
    assert_response :success
  end
end
