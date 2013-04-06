require 'test_helper'

class CommutetypesControllerTest < ActionController::TestCase
  setup do
    @commutetype = commutetypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:commutetypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create commutetype" do
    assert_difference('Commutetype.count') do
      post :create, commutetype: { description: @commutetype.description, name: @commutetype.name }
    end

    assert_redirected_to commutetype_path(assigns(:commutetype))
  end

  test "should show commutetype" do
    get :show, id: @commutetype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @commutetype
    assert_response :success
  end

  test "should update commutetype" do
    put :update, id: @commutetype, commutetype: { description: @commutetype.description, name: @commutetype.name }
    assert_redirected_to commutetype_path(assigns(:commutetype))
  end

  test "should destroy commutetype" do
    assert_difference('Commutetype.count', -1) do
      delete :destroy, id: @commutetype
    end

    assert_redirected_to commutetypes_path
  end
end
