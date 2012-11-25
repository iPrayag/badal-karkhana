require 'test_helper'

class KuraControllerTest < ActionController::TestCase
  test "should get kura" do
    get :kura
    assert_response :success
  end

end
