require 'test_helper'

class OpenhoursControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get openhours_index_url
    assert_response :success
  end

  test "should get show" do
    get openhours_show_url
    assert_response :success
  end

  test "should get new" do
    get openhours_new_url
    assert_response :success
  end

  test "should get create" do
    get openhours_create_url
    assert_response :success
  end

  test "should get edit" do
    get openhours_edit_url
    assert_response :success
  end

  test "should get update" do
    get openhours_update_url
    assert_response :success
  end

end
