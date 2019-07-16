require 'test_helper'

class Admin::PromosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_promos_index_url
    assert_response :success
  end

  test "should get new" do
    get admin_promos_new_url
    assert_response :success
  end

  test "should get create" do
    get admin_promos_create_url
    assert_response :success
  end

  test "should get edit" do
    get admin_promos_edit_url
    assert_response :success
  end

  test "should get update" do
    get admin_promos_update_url
    assert_response :success
  end

  test "should get destroy" do
    get admin_promos_destroy_url
    assert_response :success
  end

end
