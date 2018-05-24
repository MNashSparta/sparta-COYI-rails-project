require 'test_helper'

class MyResourcesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @my_resource = my_resources(:one)
  end

  test "should get index" do
    get my_resources_url
    assert_response :success
  end

  test "should get new" do
    get new_my_resource_url
    assert_response :success
  end

  test "should create my_resource" do
    assert_difference('MyResource.count') do
      post my_resources_url, params: { my_resource: { description: @my_resource.description, status: @my_resource.status, title: @my_resource.title } }
    end

    assert_redirected_to my_resource_url(MyResource.last)
  end

  test "should show my_resource" do
    get my_resource_url(@my_resource)
    assert_response :success
  end

  test "should get edit" do
    get edit_my_resource_url(@my_resource)
    assert_response :success
  end

  test "should update my_resource" do
    patch my_resource_url(@my_resource), params: { my_resource: { description: @my_resource.description, status: @my_resource.status, title: @my_resource.title } }
    assert_redirected_to my_resource_url(@my_resource)
  end

  test "should destroy my_resource" do
    assert_difference('MyResource.count', -1) do
      delete my_resource_url(@my_resource)
    end

    assert_redirected_to my_resources_url
  end
end
