require 'test_helper'

class SignInControllerTest < ActionController::TestCase
  test "should get welcome" do
    get :welcome
    assert_response :success
  end

end
