require 'test_helper'

class FavouritesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get favourites_create_url
    assert_response :success
  end

end
