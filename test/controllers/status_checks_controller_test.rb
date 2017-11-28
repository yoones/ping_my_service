require 'test_helper'

class StatusChecksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @status_check = status_checks(:one)
  end

  test "should get index" do
    get status_checks_url
    assert_response :success
  end

  test "should get new" do
    get new_status_check_url
    assert_response :success
  end

  test "should create status_check" do
    assert_difference('StatusCheck.count') do
      post status_checks_url, params: { status_check: { expected_value: @status_check.expected_value, name: @status_check.name, selector: @status_check.selector, service_id: @status_check.service_id } }
    end

    assert_redirected_to status_check_url(StatusCheck.last)
  end

  test "should show status_check" do
    get status_check_url(@status_check)
    assert_response :success
  end

  test "should get edit" do
    get edit_status_check_url(@status_check)
    assert_response :success
  end

  test "should update status_check" do
    patch status_check_url(@status_check), params: { status_check: { expected_value: @status_check.expected_value, name: @status_check.name, selector: @status_check.selector, service_id: @status_check.service_id } }
    assert_redirected_to status_check_url(@status_check)
  end

  test "should destroy status_check" do
    assert_difference('StatusCheck.count', -1) do
      delete status_check_url(@status_check)
    end

    assert_redirected_to status_checks_url
  end
end
