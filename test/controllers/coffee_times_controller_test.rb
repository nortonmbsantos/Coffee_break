require 'test_helper'

class CoffeeTimesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @coffee_time = coffee_times(:one)
  end

  test "should get index" do
    get coffee_times_url
    assert_response :success
  end

  test "should get new" do
    get new_coffee_time_url
    assert_response :success
  end

  test "should create coffee_time" do
    assert_difference('CoffeeTime.count') do
      post coffee_times_url, params: { coffee_time: { coffee_type_id: @coffee_time.coffee_type_id, worker_id: @coffee_time.worker_id } }
    end

    assert_redirected_to coffee_time_url(CoffeeTime.last)
  end

  test "should show coffee_time" do
    get coffee_time_url(@coffee_time)
    assert_response :success
  end

  test "should get edit" do
    get edit_coffee_time_url(@coffee_time)
    assert_response :success
  end

  test "should update coffee_time" do
    patch coffee_time_url(@coffee_time), params: { coffee_time: { coffee_type_id: @coffee_time.coffee_type_id, worker_id: @coffee_time.worker_id } }
    assert_redirected_to coffee_time_url(@coffee_time)
  end

  test "should destroy coffee_time" do
    assert_difference('CoffeeTime.count', -1) do
      delete coffee_time_url(@coffee_time)
    end

    assert_redirected_to coffee_times_url
  end
end
