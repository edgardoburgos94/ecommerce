require 'test_helper'

class SuppliersControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get suppliers_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get suppliers_destroy_url
    assert_response :success
  end

end
