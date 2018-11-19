require "application_system_test_case"

class StatesTest < ApplicationSystemTestCase
  setup do
    @state = states(:one)
  end

  test "visiting the index" do
    visit states_url
    assert_selector "h1", text: "States"
  end

  test "creating a State" do
    visit states_url
    click_on "New State"

    fill_in "Air", with: @state.air
    fill_in "C", with: @state.c
    fill_in "Hum", with: @state.hum
    fill_in "Rbg2", with: @state.rbg2
    fill_in "Rgb1", with: @state.rgb1
    fill_in "S1", with: @state.s1
    fill_in "S2", with: @state.s2
    fill_in "S3", with: @state.s3
    fill_in "Smk", with: @state.smk
    fill_in "St1", with: @state.st1
    fill_in "St2", with: @state.st2
    fill_in "Temp", with: @state.temp
    click_on "Create State"

    assert_text "State was successfully created"
    click_on "Back"
  end

  test "updating a State" do
    visit states_url
    click_on "Edit", match: :first

    fill_in "Air", with: @state.air
    fill_in "C", with: @state.c
    fill_in "Hum", with: @state.hum
    fill_in "Rbg2", with: @state.rbg2
    fill_in "Rgb1", with: @state.rgb1
    fill_in "S1", with: @state.s1
    fill_in "S2", with: @state.s2
    fill_in "S3", with: @state.s3
    fill_in "Smk", with: @state.smk
    fill_in "St1", with: @state.st1
    fill_in "St2", with: @state.st2
    fill_in "Temp", with: @state.temp
    click_on "Update State"

    assert_text "State was successfully updated"
    click_on "Back"
  end

  test "destroying a State" do
    visit states_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "State was successfully destroyed"
  end
end
