require 'test_helper'

class DemandSitesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @demand_site = demand_sites(:one)
  end

  test "should get index" do
    get demand_sites_url
    assert_response :success
  end

  test "should get new" do
    get new_demand_site_url
    assert_response :success
  end

  test "should create demand_site" do
    assert_difference('DemandSite.count') do
      post demand_sites_url, params: { demand_site: { demand: @demand_site.demand, name: @demand_site.name } }
    end

    assert_redirected_to demand_site_url(DemandSite.last)
  end

  test "should show demand_site" do
    get demand_site_url(@demand_site)
    assert_response :success
  end

  test "should get edit" do
    get edit_demand_site_url(@demand_site)
    assert_response :success
  end

  test "should update demand_site" do
    patch demand_site_url(@demand_site), params: { demand_site: { demand: @demand_site.demand, name: @demand_site.name } }
    assert_redirected_to demand_site_url(@demand_site)
  end

  test "should destroy demand_site" do
    assert_difference('DemandSite.count', -1) do
      delete demand_site_url(@demand_site)
    end

    assert_redirected_to demand_sites_url
  end
end
