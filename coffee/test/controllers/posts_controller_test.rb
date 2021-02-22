require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get posts_main_url
    assert_response :success
  end

  test "should get about" do
    get posts_about_url
    assert_response :success
  end

  test "should get history" do
    get posts_history_url
    assert_response :success
  end

end
