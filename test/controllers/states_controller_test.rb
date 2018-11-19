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
      post states_url, params: { state: { air: @state.air, c: @state.c, hum: @state.hum, rbg2: @state.rbg2, rgb1: @state.rgb1, s1: @state.s1, s2: @state.s2, s3: @state.s3, smk: @state.smk, st1: @state.st1, st2: @state.st2, temp: @state.temp } }
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
    patch state_url(@state), params: { state: { air: @state.air, c: @state.c, hum: @state.hum, rbg2: @state.rbg2, rgb1: @state.rgb1, s1: @state.s1, s2: @state.s2, s3: @state.s3, smk: @state.smk, st1: @state.st1, st2: @state.st2, temp: @state.temp } }
    assert_redirected_to state_url(@state)
  end

  test "should destroy state" do
    assert_difference('State.count', -1) do
      delete state_url(@state)
    end

    assert_redirected_to states_url
  end
end
