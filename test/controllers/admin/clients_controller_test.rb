require 'test_helper'

class Admin::ClientsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_clients_index_url
    assert_response :success
  end

  test "should get new" do
    get admin_clients_new_url
    assert_response :success
  end

  test "should get create" do
    get admin_clients_create_url
    assert_response :success
  end

  test "should get edit" do
    get admin_clients_edit_url
    assert_response :success
  end

  test "should get update" do
    get admin_clients_update_url
    assert_response :success
  end

  test "should get destroy" do
    get admin_clients_destroy_url
    assert_response :success
  end

end
