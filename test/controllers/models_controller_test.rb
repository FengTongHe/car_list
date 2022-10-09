require "test_helper"

class ModelsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get models_index_url
    assert_response :success
  end

  test "should get show" do
    get models_show_url
    assert_response :success
  end
end
