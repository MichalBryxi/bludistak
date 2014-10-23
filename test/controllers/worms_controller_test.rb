require 'test_helper'

class WormsControllerTest < ActionController::TestCase
  setup do
    @worm = worms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:worms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create worm" do
    assert_difference('Worm.count') do
      post :create, worm: { description: @worm.description, name: @worm.name, project_id=int: @worm.project_id=int }
    end

    assert_redirected_to worm_path(assigns(:worm))
  end

  test "should show worm" do
    get :show, id: @worm
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @worm
    assert_response :success
  end

  test "should update worm" do
    patch :update, id: @worm, worm: { description: @worm.description, name: @worm.name, project_id=int: @worm.project_id=int }
    assert_redirected_to worm_path(assigns(:worm))
  end

  test "should destroy worm" do
    assert_difference('Worm.count', -1) do
      delete :destroy, id: @worm
    end

    assert_redirected_to worms_path
  end
end
