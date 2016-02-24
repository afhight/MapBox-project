require 'test_helper'

class UserinputsControllerTest < ActionController::TestCase
  setup do
    @userinput = userinputs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:userinputs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create userinput" do
    assert_difference('Userinput.count') do
      post :create, userinput: { location1: @userinput.location1, location2: @userinput.location2, location3: @userinput.location3 }
    end

    assert_redirected_to userinput_path(assigns(:userinput))
  end

  test "should show userinput" do
    get :show, id: @userinput
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @userinput
    assert_response :success
  end

  test "should update userinput" do
    patch :update, id: @userinput, userinput: { location1: @userinput.location1, location2: @userinput.location2, location3: @userinput.location3 }
    assert_redirected_to userinput_path(assigns(:userinput))
  end

  test "should destroy userinput" do
    assert_difference('Userinput.count', -1) do
      delete :destroy, id: @userinput
    end

    assert_redirected_to userinputs_path
  end
end
