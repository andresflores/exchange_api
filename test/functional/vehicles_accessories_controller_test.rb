require 'test_helper'

class VehiclesAccessoriesControllerTest < ActionController::TestCase
  setup do
    @vehicles_accessory = vehicles_accessories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vehicles_accessories)
  end

  test "should create vehicles_accessory" do
    assert_difference('VehiclesAccessory.count') do
      post :create, vehicles_accessory: { description: @vehicles_accessory.description, name: @vehicles_accessory.name, price: @vehicles_accessory.price }
    end

    assert_response 201
  end

  test "should show vehicles_accessory" do
    get :show, id: @vehicles_accessory
    assert_response :success
  end

  test "should update vehicles_accessory" do
    put :update, id: @vehicles_accessory, vehicles_accessory: { description: @vehicles_accessory.description, name: @vehicles_accessory.name, price: @vehicles_accessory.price }
    assert_response 204
  end

  test "should destroy vehicles_accessory" do
    assert_difference('VehiclesAccessory.count', -1) do
      delete :destroy, id: @vehicles_accessory
    end

    assert_response 204
  end
end
