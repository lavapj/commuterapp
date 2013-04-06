require 'test_helper'

class CommutesControllerTest < ActionController::TestCase
  setup do
    @commute = commutes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:commutes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create commute" do
    assert_difference('Commute.count') do
      post :create, commute: { end: @commute.end, name: @commute.name, start: @commute.start }
    end

    assert_redirected_to commute_path(assigns(:commute))
  end

  test "should show commute" do
    get :show, id: @commute
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @commute
    assert_response :success
  end

  test "should update commute" do
    put :update, id: @commute, commute: { end: @commute.end, name: @commute.name, start: @commute.start }
    assert_redirected_to commute_path(assigns(:commute))
  end

  test "should destroy commute" do
    assert_difference('Commute.count', -1) do
      delete :destroy, id: @commute
    end

    assert_redirected_to commutes_path
  end
end
