require "application_system_test_case"

class MyResourcesTest < ApplicationSystemTestCase
  setup do
    @my_resource = my_resources(:one)
  end

  test "visiting the index" do
    visit my_resources_url
    assert_selector "h1", text: "My Resources"
  end

  test "creating a My resource" do
    visit my_resources_url
    click_on "New My Resource"

    fill_in "Description", with: @my_resource.description
    fill_in "Status", with: @my_resource.status
    fill_in "Title", with: @my_resource.title
    click_on "Create My resource"

    assert_text "My resource was successfully created"
    click_on "Back"
  end

  test "updating a My resource" do
    visit my_resources_url
    click_on "Edit", match: :first

    fill_in "Description", with: @my_resource.description
    fill_in "Status", with: @my_resource.status
    fill_in "Title", with: @my_resource.title
    click_on "Update My resource"

    assert_text "My resource was successfully updated"
    click_on "Back"
  end

  test "destroying a My resource" do
    visit my_resources_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "My resource was successfully destroyed"
  end
end
