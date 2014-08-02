require 'test_helper'

class ResetPassControllerTest < ActionController::TestCase
  test "should get sub" do
    get :sub
    assert_response :success
  end

end
