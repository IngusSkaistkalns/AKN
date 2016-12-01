require 'test_helper'

class FotoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get foto_index_url
    assert_response :success
  end

end
