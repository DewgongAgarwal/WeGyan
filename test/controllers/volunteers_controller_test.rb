require 'test_helper'

class VolunteersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get volunteers_show_url
    assert_response :success
  end

end
