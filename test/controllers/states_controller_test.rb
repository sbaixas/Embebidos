require 'test_helper'

class StatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @state = states(:one)
  end

  test "should get index" do
    get states_url
    assert_response :success
  end

  test "should get new" do
    get new_state_url
    assert_response :success
  end

  test "should create state" do
    assert_difference('State.count') do
      post states_url, params: { state: { air_quality: @state.air_quality, count: @state.count, humidity: @state.humidity, rbg_2: @state.rbg_2, rgb_1: @state.rgb_1, servo_1: @state.servo_1, servo_2: @state.servo_2, servo_3: @state.servo_3, smoke: @state.smoke, stepper_1: @state.stepper_1, stepper_2: @state.stepper_2, temperature: @state.temperature } }
    end

    assert_redirected_to state_url(State.last)
  end

  test "should show state" do
    get state_url(@state)
    assert_response :success
  end

  test "should get edit" do
    get edit_state_url(@state)
    assert_response :success
  end

  test "should update state" do
    patch state_url(@state), params: { state: { air_quality: @state.air_quality, count: @state.count, humidity: @state.humidity, rbg_2: @state.rbg_2, rgb_1: @state.rgb_1, servo_1: @state.servo_1, servo_2: @state.servo_2, servo_3: @state.servo_3, smoke: @state.smoke, stepper_1: @state.stepper_1, stepper_2: @state.stepper_2, temperature: @state.temperature } }
    assert_redirected_to state_url(@state)
  end

  test "should destroy state" do
    assert_difference('State.count', -1) do
      delete state_url(@state)
    end

    assert_redirected_to states_url
  end
end
