require 'test_helper'

class TransportationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @transportation = transportations(:one)
  end

  test "should get index" do
    get transportations_url
    assert_response :success
  end

  test "should get new" do
    get new_transportation_url
    assert_response :success
  end

  test "should create transportation" do
    assert_difference('Transportation.count') do
      post transportations_url, params: { transportation: { cost_factor: @transportation.cost_factor, demand_site_id: @transportation.demand_site_id, supply_site_id: @transportation.supply_site_id, transported_amount: @transportation.transported_amount } }
    end

    assert_redirected_to transportation_url(Transportation.last)
  end

  test "should show transportation" do
    get transportation_url(@transportation)
    assert_response :success
  end

  test "should get edit" do
    get edit_transportation_url(@transportation)
    assert_response :success
  end

  test "should update transportation" do
    patch transportation_url(@transportation), params: { transportation: { cost_factor: @transportation.cost_factor, demand_site_id: @transportation.demand_site_id, supply_site_id: @transportation.supply_site_id, transported_amount: @transportation.transported_amount } }
    assert_redirected_to transportation_url(@transportation)
  end

  test "should destroy transportation" do
    assert_difference('Transportation.count', -1) do
      delete transportation_url(@transportation)
    end

    assert_redirected_to transportations_url
  end
end
