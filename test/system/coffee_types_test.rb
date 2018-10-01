require "application_system_test_case"

class CoffeeTypesTest < ApplicationSystemTestCase
  setup do
    @coffee_type = coffee_types(:one)
  end

  test "visiting the index" do
    visit coffee_types_url
    assert_selector "h1", text: "Coffee Types"
  end

  test "creating a Coffee type" do
    visit coffee_types_url
    click_on "New Coffee Type"

    fill_in "Name", with: @coffee_type.name
    click_on "Create Coffee type"

    assert_text "Coffee type was successfully created"
    click_on "Back"
  end

  test "updating a Coffee type" do
    visit coffee_types_url
    click_on "Edit", match: :first

    fill_in "Name", with: @coffee_type.name
    click_on "Update Coffee type"

    assert_text "Coffee type was successfully updated"
    click_on "Back"
  end

  test "destroying a Coffee type" do
    visit coffee_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Coffee type was successfully destroyed"
  end
end
