class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:notice] = "Dziękujemy za wpis"
      redirect_to posts_path
    end
  end

  private 
  def post_params
    params.require(:post).permit(:author, :body)
  end

end
