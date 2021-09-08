require "test_helper"

class PostsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:posts)
  end

  test "should get new" do
    get :new
    assert_response :success
    assert_not_nil assigns(:post)
  end

  test "should create a post" do
    # post_before = Post.count
    # # podspodem post to ten od html
    # post :create, params: {post: { author: "Autor", body: "Wpis" }}
    # post_after = Post.count
    # assert_equal 1, post_after-post_before
    # assert_redirected_to posts_path
  # to samo co wyzej
    assert_difference -> {Post.count}, 1 do
      post :create, params: {post: { author: "Autor", body: "Wpis" }}
    end
    assert_redirected_to posts_path
  end  
end
