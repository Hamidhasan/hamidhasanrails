require 'test_helper'

class LuggagesControllerTest < ActionController::TestCase
  setup do
    @luggage = luggages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:luggages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create luggage" do
    assert_difference('Luggage.count') do
      post :create, luggage: @luggage.attributes
    end

    assert_redirected_to luggage_path(assigns(:luggage))
  end

  test "should show luggage" do
    get :show, id: @luggage
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @luggage
    assert_response :success
  end

  test "should update luggage" do
    put :update, id: @luggage, luggage: @luggage.attributes
    assert_redirected_to luggage_path(assigns(:luggage))
  end

  test "should destroy luggage" do
    assert_difference('Luggage.count', -1) do
      delete :destroy, id: @luggage
    end

    assert_redirected_to luggages_path
  end
end
