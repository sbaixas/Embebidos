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

    fill_in "Air Quality", with: @state.air_quality
    fill_in "Count", with: @state.count
    fill_in "Humidity", with: @state.humidity
    fill_in "Rbg 2", with: @state.rbg_2
    fill_in "Rgb 1", with: @state.rgb_1
    fill_in "Servo 1", with: @state.servo_1
    fill_in "Servo 2", with: @state.servo_2
    fill_in "Servo 3", with: @state.servo_3
    fill_in "Smoke", with: @state.smoke
    fill_in "Stepper 1", with: @state.stepper_1
    fill_in "Stepper 2", with: @state.stepper_2
    fill_in "Temperature", with: @state.temperature
    click_on "Create State"

    assert_text "State was successfully created"
    click_on "Back"
  end

  test "updating a State" do
    visit states_url
    click_on "Edit", match: :first

    fill_in "Air Quality", with: @state.air_quality
    fill_in "Count", with: @state.count
    fill_in "Humidity", with: @state.humidity
    fill_in "Rbg 2", with: @state.rbg_2
    fill_in "Rgb 1", with: @state.rgb_1
    fill_in "Servo 1", with: @state.servo_1
    fill_in "Servo 2", with: @state.servo_2
    fill_in "Servo 3", with: @state.servo_3
    fill_in "Smoke", with: @state.smoke
    fill_in "Stepper 1", with: @state.stepper_1
    fill_in "Stepper 2", with: @state.stepper_2
    fill_in "Temperature", with: @state.temperature
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
