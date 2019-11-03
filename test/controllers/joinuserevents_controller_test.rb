require 'test_helper'

class JoinusereventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @joinuserevent = joinuserevents(:one)
  end

  test "should get index" do
    get joinuserevents_url, as: :json
    assert_response :success
  end

  test "should create joinuserevent" do
    assert_difference('Joinuserevent.count') do
      post joinuserevents_url, params: { joinuserevent: { event_id: @joinuserevent.event_id, ingamename: @joinuserevent.ingamename, inparty: @joinuserevent.inparty, user_id: @joinuserevent.user_id, waitlist: @joinuserevent.waitlist } }, as: :json
    end

    assert_response 201
  end

  test "should show joinuserevent" do
    get joinuserevent_url(@joinuserevent), as: :json
    assert_response :success
  end

  test "should update joinuserevent" do
    patch joinuserevent_url(@joinuserevent), params: { joinuserevent: { event_id: @joinuserevent.event_id, ingamename: @joinuserevent.ingamename, inparty: @joinuserevent.inparty, user_id: @joinuserevent.user_id, waitlist: @joinuserevent.waitlist } }, as: :json
    assert_response 200
  end

  test "should destroy joinuserevent" do
    assert_difference('Joinuserevent.count', -1) do
      delete joinuserevent_url(@joinuserevent), as: :json
    end

    assert_response 204
  end
end
