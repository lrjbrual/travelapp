require 'test_helper'

class PromosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get promos_index_url
    assert_response :success
  end

  test "should get show" do
    get promos_show_url
    assert_response :success
  end

end
