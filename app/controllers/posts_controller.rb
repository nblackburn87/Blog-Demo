class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new post_params
    if @post.save
      current_user.posts << @post
      flash[:notice] = "New post created!"
      redirect_to posts_path
    else
      render 'new'
    end
  end

  def edit
    @post = Post.find params[:id]
  end

  def update
    @post = Post.find params[:id]
    if @post.update post_params
      flash[:notice] = "Your post has been edited!"
      redirect_to posts_path
    else
      flash[:alert] = "Something when wrong. Please try again."
      render 'edit'
    end
  end

  def show
    @post = Post.find params[:id]
  end
  
  def destroy
    @post = Post.find params[:id]
    @post.destroy
    flash[:notice] = "Your post has been deleted!"
    redirect_to posts_path
  end

  private
  def post_params
    params.require(:post).permit(:title, :body)
  end
end