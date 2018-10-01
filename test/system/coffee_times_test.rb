require "application_system_test_case"

class CoffeeTimesTest < ApplicationSystemTestCase
  setup do
    @coffee_time = coffee_times(:one)
  end

  test "visiting the index" do
    visit coffee_times_url
    assert_selector "h1", text: "Coffee Times"
  end

  test "creating a Coffee time" do
    visit coffee_times_url
    click_on "New Coffee Time"

    fill_in "Coffee Type", with: @coffee_time.coffee_type_id
    fill_in "Worker", with: @coffee_time.worker_id
    click_on "Create Coffee time"

    assert_text "Coffee time was successfully created"
    click_on "Back"
  end

  test "updating a Coffee time" do
    visit coffee_times_url
    click_on "Edit", match: :first

    fill_in "Coffee Type", with: @coffee_time.coffee_type_id
    fill_in "Worker", with: @coffee_time.worker_id
    click_on "Update Coffee time"

    assert_text "Coffee time was successfully updated"
    click_on "Back"
  end

  test "destroying a Coffee time" do
    visit coffee_times_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Coffee time was successfully destroyed"
  end
end
