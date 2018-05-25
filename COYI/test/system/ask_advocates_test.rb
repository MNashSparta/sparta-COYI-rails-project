require "application_system_test_case"

class AskAdvocatesTest < ApplicationSystemTestCase
  setup do
    @ask_advocate = ask_advocates(:one)
  end

  test "visiting the index" do
    visit ask_advocates_url
    assert_selector "h1", text: "Ask Advocates"
  end

  test "creating a Ask advocate" do
    visit ask_advocates_url
    click_on "New Ask Advocate"

    fill_in "Question", with: @ask_advocate.question
    click_on "Create Ask advocate"

    assert_text "Ask advocate was successfully created"
    click_on "Back"
  end

  test "updating a Ask advocate" do
    visit ask_advocates_url
    click_on "Edit", match: :first

    fill_in "Question", with: @ask_advocate.question
    click_on "Update Ask advocate"

    assert_text "Ask advocate was successfully updated"
    click_on "Back"
  end

  test "destroying a Ask advocate" do
    visit ask_advocates_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ask advocate was successfully destroyed"
  end
end
