require "test_helper"

class ProspectsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get prospects_new_url
    assert_response :success
  end

  test "should get create" do
    get prospects_create_url
    assert_response :success
  end
end
