require "application_system_test_case"

class SupplySitesTest < ApplicationSystemTestCase
  setup do
    @supply_site = supply_sites(:one)
  end

  test "visiting the index" do
    visit supply_sites_url
    assert_selector "h1", text: "Supply Sites"
  end

  test "creating a Supply site" do
    visit supply_sites_url
    click_on "New Supply Site"

    fill_in "Capacity", with: @supply_site.capacity
    fill_in "Name", with: @supply_site.name
    click_on "Create Supply site"

    assert_text "Supply site was successfully created"
    click_on "Back"
  end

  test "updating a Supply site" do
    visit supply_sites_url
    click_on "Edit", match: :first

    fill_in "Capacity", with: @supply_site.capacity
    fill_in "Name", with: @supply_site.name
    click_on "Update Supply site"

    assert_text "Supply site was successfully updated"
    click_on "Back"
  end

  test "destroying a Supply site" do
    visit supply_sites_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Supply site was successfully destroyed"
  end
end
