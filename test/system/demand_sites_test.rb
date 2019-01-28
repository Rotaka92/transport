require "application_system_test_case"

class DemandSitesTest < ApplicationSystemTestCase
  setup do
    @demand_site = demand_sites(:one)
  end

  test "visiting the index" do
    visit demand_sites_url
    assert_selector "h1", text: "Demand Sites"
  end

  test "creating a Demand site" do
    visit demand_sites_url
    click_on "New Demand Site"

    fill_in "Demand", with: @demand_site.demand
    fill_in "Name", with: @demand_site.name
    click_on "Create Demand site"

    assert_text "Demand site was successfully created"
    click_on "Back"
  end

  test "updating a Demand site" do
    visit demand_sites_url
    click_on "Edit", match: :first

    fill_in "Demand", with: @demand_site.demand
    fill_in "Name", with: @demand_site.name
    click_on "Update Demand site"

    assert_text "Demand site was successfully updated"
    click_on "Back"
  end

  test "destroying a Demand site" do
    visit demand_sites_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Demand site was successfully destroyed"
  end
end
