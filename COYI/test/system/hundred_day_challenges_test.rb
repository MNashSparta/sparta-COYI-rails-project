require "application_system_test_case"

class HundredDayChallengesTest < ApplicationSystemTestCase
  setup do
    @hundred_day_challenge = hundred_day_challenges(:one)
  end

  test "visiting the index" do
    visit hundred_day_challenges_url
    assert_selector "h1", text: "Hundred Day Challenges"
  end

  test "creating a Hundred day challenge" do
    visit hundred_day_challenges_url
    click_on "New Hundred Day Challenge"

    fill_in "Address", with: @hundred_day_challenge.Address
    fill_in "Email", with: @hundred_day_challenge.Email
    fill_in "First Name", with: @hundred_day_challenge.First_name
    fill_in "Last Name", with: @hundred_day_challenge.Last_name
    fill_in "Location", with: @hundred_day_challenge.Location
    fill_in "Organisation", with: @hundred_day_challenge.Organisation
    click_on "Create Hundred day challenge"

    assert_text "Hundred day challenge was successfully created"
    click_on "Back"
  end

  test "updating a Hundred day challenge" do
    visit hundred_day_challenges_url
    click_on "Edit", match: :first

    fill_in "Address", with: @hundred_day_challenge.Address
    fill_in "Email", with: @hundred_day_challenge.Email
    fill_in "First Name", with: @hundred_day_challenge.First_name
    fill_in "Last Name", with: @hundred_day_challenge.Last_name
    fill_in "Location", with: @hundred_day_challenge.Location
    fill_in "Organisation", with: @hundred_day_challenge.Organisation
    click_on "Update Hundred day challenge"

    assert_text "Hundred day challenge was successfully updated"
    click_on "Back"
  end

  test "destroying a Hundred day challenge" do
    visit hundred_day_challenges_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hundred day challenge was successfully destroyed"
  end
end
