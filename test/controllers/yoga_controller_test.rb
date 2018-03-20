require 'test_helper'

class YogaControllerTest < ActionDispatch::IntegrationTest
  test "should get schedule" do
    get yoga_schedule_url
    assert_response :success
  end

  test "should get about" do
    get yoga_about_url
    assert_response :success
  end

end
