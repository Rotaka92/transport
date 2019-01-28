require 'test_helper'

class SupplySitesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @supply_site = supply_sites(:one)
  end

  test "should get index" do
    get supply_sites_url
    assert_response :success
  end

  test "should get new" do
    get new_supply_site_url
    assert_response :success
  end

  test "should create supply_site" do
    assert_difference('SupplySite.count') do
      post supply_sites_url, params: { supply_site: { capacity: @supply_site.capacity, name: @supply_site.name } }
    end

    assert_redirected_to supply_site_url(SupplySite.last)
  end

  test "should show supply_site" do
    get supply_site_url(@supply_site)
    assert_response :success
  end

  test "should get edit" do
    get edit_supply_site_url(@supply_site)
    assert_response :success
  end

  test "should update supply_site" do
    patch supply_site_url(@supply_site), params: { supply_site: { capacity: @supply_site.capacity, name: @supply_site.name } }
    assert_redirected_to supply_site_url(@supply_site)
  end

  test "should destroy supply_site" do
    assert_difference('SupplySite.count', -1) do
      delete supply_site_url(@supply_site)
    end

    assert_redirected_to supply_sites_url
  end
end
