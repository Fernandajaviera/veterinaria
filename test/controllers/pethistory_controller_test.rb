require "test_helper"

class PethistoryControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pethistory_index_url
    assert_response :success
  end

  test "should get new" do
    get pethistory_new_url
    assert_response :success
  end

  test "should get create" do
    get pethistory_create_url
    assert_response :success
  end

  test "should get show" do
    get pethistory_show_url
    assert_response :success
  end

  test "should get edit" do
    get pethistory_edit_url
    assert_response :success
  end

  test "should get update" do
    get pethistory_update_url
    assert_response :success
  end

  test "should get destroy" do
    get pethistory_destroy_url
    assert_response :success
  end
end
