require "test_helper"

class PostsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get posts_index_url
    assert_response :success
  end

  test "should get new" do
    get posts_new_url
    assert_response :success
  end

  test "should get show" do
    get posts_show_url
    assert_response :success
  end

  test "should get edit" do
    get posts_edit_url
    assert_response :success
  end

  test "should get homework" do
    get posts_homework_url
    assert_response :success
  end

  test "should get job" do
    get posts_job_url
    assert_response :success
  end

  test "should get other" do
    get posts_other_url
    assert_response :success
  end
end
