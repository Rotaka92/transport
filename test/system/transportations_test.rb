require "application_system_test_case"

class TransportationsTest < ApplicationSystemTestCase
  setup do
    @transportation = transportations(:one)
  end

  test "visiting the index" do
    visit transportations_url
    assert_selector "h1", text: "Transportations"
  end

  test "creating a Transportation" do
    visit transportations_url
    click_on "New Transportation"

    fill_in "Cost factor", with: @transportation.cost_factor
    fill_in "Demand site", with: @transportation.demand_site_id
    fill_in "Supply site", with: @transportation.supply_site_id
    fill_in "Transported amount", with: @transportation.transported_amount
    click_on "Create Transportation"

    assert_text "Transportation was successfully created"
    click_on "Back"
  end

  test "updating a Transportation" do
    visit transportations_url
    click_on "Edit", match: :first

    fill_in "Cost factor", with: @transportation.cost_factor
    fill_in "Demand site", with: @transportation.demand_site_id
    fill_in "Supply site", with: @transportation.supply_site_id
    fill_in "Transported amount", with: @transportation.transported_amount
    click_on "Update Transportation"

    assert_text "Transportation was successfully updated"
    click_on "Back"
  end

  test "destroying a Transportation" do
    visit transportations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Transportation was successfully destroyed"
  end
end
