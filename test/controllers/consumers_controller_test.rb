require "test_helper"

class ConsumersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get consumers_new_url
    assert_response :success
  end

  test "should get show" do
    get consumers_show_url
    assert_response :success
  end
end
