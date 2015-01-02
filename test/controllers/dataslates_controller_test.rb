require 'test_helper'

class DataslatesControllerTest < ActionController::TestCase
  setup do
    @dataslate = dataslates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dataslates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dataslate" do
    assert_difference('Dataslate.count') do
      post :create, dataslate: {  }
    end

    assert_redirected_to dataslate_path(assigns(:dataslate))
  end

  test "should show dataslate" do
    get :show, id: @dataslate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dataslate
    assert_response :success
  end

  test "should update dataslate" do
    patch :update, id: @dataslate, dataslate: {  }
    assert_redirected_to dataslate_path(assigns(:dataslate))
  end

  test "should destroy dataslate" do
    assert_difference('Dataslate.count', -1) do
      delete :destroy, id: @dataslate
    end

    assert_redirected_to dataslates_path
  end
end
