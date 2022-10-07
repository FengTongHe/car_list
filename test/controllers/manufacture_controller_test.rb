require "test_helper"

class ManufactureControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get manufacture_index_url
    assert_response :success
  end
end
