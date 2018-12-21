class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    authentication_required!
    @post = Post.new
    render :new
  end

  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to posts_path
  end

  def show
    set_post
  end

  def edit
    authentication_required!
    set_post
    render :edit
  end

  def update
    set_post
    @post.update(post_params)
    redirect_to post_path(@post)
  end

  def destroy
    authentication_required!

    set_post
    @post.destroy
    redirect_to posts_path
    render :destroy
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:name, :body, :photo)
  end


end

