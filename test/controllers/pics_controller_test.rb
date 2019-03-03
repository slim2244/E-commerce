require 'test_helper'

class PicsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get pics_create_url
    assert_response :success
  end

end
