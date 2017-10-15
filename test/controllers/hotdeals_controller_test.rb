require 'test_helper'

class HotdealsControllerTest < ActionController::TestCase
  test "should get hotdeal" do
    get :hotdeal
    assert_response :success
  end

end
