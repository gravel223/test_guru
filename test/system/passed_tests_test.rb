require "application_system_test_case"

class PassedTestsTest < ApplicationSystemTestCase
  setup do
    @passed_test = passed_tests(:one)
  end

  test "visiting the index" do
    visit passed_tests_url
    assert_selector "h1", text: "Passed Tests"
  end

  test "creating a Passed test" do
    visit passed_tests_url
    click_on "New Passed Test"

    click_on "Create Passed test"

    assert_text "Passed test was successfully created"
    click_on "Back"
  end

  test "updating a Passed test" do
    visit passed_tests_url
    click_on "Edit", match: :first

    click_on "Update Passed test"

    assert_text "Passed test was successfully updated"
    click_on "Back"
  end

  test "destroying a Passed test" do
    visit passed_tests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Passed test was successfully destroyed"
  end
end
