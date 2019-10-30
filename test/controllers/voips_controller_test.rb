require 'test_helper'

class VoipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @voip = voips(:one)
  end

  test "should get index" do
    get voips_url, as: :json
    assert_response :success
  end

  test "should create voip" do
    assert_difference('Voip.count') do
      post voips_url, params: { voip: { servername: @voip.servername, servernote: @voip.servernote, voipaddress: @voip.voipaddress } }, as: :json
    end

    assert_response 201
  end

  test "should show voip" do
    get voip_url(@voip), as: :json
    assert_response :success
  end

  test "should update voip" do
    patch voip_url(@voip), params: { voip: { servername: @voip.servername, servernote: @voip.servernote, voipaddress: @voip.voipaddress } }, as: :json
    assert_response 200
  end

  test "should destroy voip" do
    assert_difference('Voip.count', -1) do
      delete voip_url(@voip), as: :json
    end

    assert_response 204
  end
end
