require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get map" do
    get :map
    assert_response :success
  end

  test "should get more" do
    get :more
    assert_response :success
  end

end
