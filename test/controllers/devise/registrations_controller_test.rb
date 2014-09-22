require 'test_helper'

class Devise::RegistrationsControllerTest < ActionController::TestCase
  test "should get [admin" do
    get :[admin
    assert_response :success
  end

end
