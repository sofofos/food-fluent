require "test_helper"

class DietProfilesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get diet_profiles_new_url
    assert_response :success
  end

  test "should get create" do
    get diet_profiles_create_url
    assert_response :success
  end
end
