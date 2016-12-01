require 'test_helper'

class FotosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get fotos_index_url
    assert_response :success
  end

  test "should get new" do
    get fotos_new_url
    assert_response :success
  end

  test "should get create" do
    get fotos_create_url
    assert_response :success
  end

  test "should get destroy" do
    get fotos_destroy_url
    assert_response :success
  end

end
