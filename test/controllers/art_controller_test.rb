require 'test_helper'

class ArtControllerTest < ActionDispatch::IntegrationTest
  test "should get biography" do
    get art_biography_url
    assert_response :success
  end

  test "should get work" do
    get art_work_url
    assert_response :success
  end

end
