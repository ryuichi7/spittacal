require 'test_helper'

class CalendarControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get calendar_new_url
    assert_response :success
  end

  test "should get create" do
    get calendar_create_url
    assert_response :success
  end

  test "should get show" do
    get calendar_show_url
    assert_response :success
  end

  test "should get delete" do
    get calendar_delete_url
    assert_response :success
  end

end
