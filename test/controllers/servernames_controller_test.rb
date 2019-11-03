require 'test_helper'

class ServernamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @servername = servernames(:one)
  end

  test "should get index" do
    get servernames_url, as: :json
    assert_response :success
  end

  test "should create servername" do
    assert_difference('Servername.count') do
      post servernames_url, params: { servername: { serveraddress: @servername.serveraddress, servernote: @servername.servernote } }, as: :json
    end

    assert_response 201
  end

  test "should show servername" do
    get servername_url(@servername), as: :json
    assert_response :success
  end

  test "should update servername" do
    patch servername_url(@servername), params: { servername: { serveraddress: @servername.serveraddress, servernote: @servername.servernote } }, as: :json
    assert_response 200
  end

  test "should destroy servername" do
    assert_difference('Servername.count', -1) do
      delete servername_url(@servername), as: :json
    end

    assert_response 204
  end
end
