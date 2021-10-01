class PostsController < ApplicationController
  def index
    @posts = Post.page(params[:page]).per(3)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.save
    respond_to do |format|
      format.html do 
        flash[:notice] = "Dziękujemy za wpis"
        redirect_to posts_path
    end
    format.js {}
  end
  end


  def surprice
  end

  private 
  def post_params
    params.require(:post).permit(:author, :body)
  end

end
