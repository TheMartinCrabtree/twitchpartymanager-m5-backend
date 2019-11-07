require 'test_helper'

class SignupsControllerTest < ActionDispatch::IntegrationTest
  test "should get update" do
    get signups_update_url
    assert_response :success
  end

  test "should get create" do
    get signups_create_url
    assert_response :success
  end

  test "should get show" do
    get signups_show_url
    assert_response :success
  end

end
