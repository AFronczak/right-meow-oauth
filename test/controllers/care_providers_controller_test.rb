require 'test_helper'

class CareProvidersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @care_provider = care_providers(:one)
  end

  test "should get index" do
    get care_providers_url
    assert_response :success
  end

  test "should get new" do
    get new_care_provider_url
    assert_response :success
  end

  test "should create care_provider" do
    assert_difference('CareProvider.count') do
      post care_providers_url, params: { care_provider: {  } }
    end

    assert_redirected_to care_provider_url(CareProvider.last)
  end

  test "should show care_provider" do
    get care_provider_url(@care_provider)
    assert_response :success
  end

  test "should get edit" do
    get edit_care_provider_url(@care_provider)
    assert_response :success
  end

  test "should update care_provider" do
    patch care_provider_url(@care_provider), params: { care_provider: {  } }
    assert_redirected_to care_provider_url(@care_provider)
  end

  test "should destroy care_provider" do
    assert_difference('CareProvider.count', -1) do
      delete care_provider_url(@care_provider)
    end

    assert_redirected_to care_providers_url
  end
end
