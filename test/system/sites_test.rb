require "application_system_test_case"

class SitesTest < ApplicationSystemTestCase
  setup do
    @site = sites(:one)
  end

  test "visiting the index" do
    visit sites_url
    assert_selector "h1", text: "Sites"
  end

  test "creating a Site" do
    visit sites_url
    click_on "New Site"

    fill_in "Acct mgr", with: @site.acct_mgr
    fill_in "Address", with: @site.address
    fill_in "Branch mgr", with: @site.branch_mgr
    fill_in "Name", with: @site.name
    fill_in "Number", with: @site.number
    fill_in "Phone", with: @site.phone
    fill_in "Workorder", with: @site.workorder_id
    click_on "Create Site"

    assert_text "Site was successfully created"
    click_on "Back"
  end

  test "updating a Site" do
    visit sites_url
    click_on "Edit", match: :first

    fill_in "Acct mgr", with: @site.acct_mgr
    fill_in "Address", with: @site.address
    fill_in "Branch mgr", with: @site.branch_mgr
    fill_in "Name", with: @site.name
    fill_in "Number", with: @site.number
    fill_in "Phone", with: @site.phone
    fill_in "Workorder", with: @site.workorder_id
    click_on "Update Site"

    assert_text "Site was successfully updated"
    click_on "Back"
  end

  test "destroying a Site" do
    visit sites_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Site was successfully destroyed"
  end
end
