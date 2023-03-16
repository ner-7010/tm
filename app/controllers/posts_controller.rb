class PostsController < ApplicationController
  def index
    require 'holiday_japan'
    @posts = Post.all
  end

  def homework
    @posts = Post.all
  end

  def job
    @posts = Post.all
  end

  def other
    @posts = Post.all
  end

  def new
    @post = Post.new
    @day = params[:day]
    @time = params[:time]
  end

  def create
    @post = Post.new(post_params)
    @post.time_left = @post.time_required - @post.time_taken
    @post.day = @post.start_time.strftime("%Y-%m-%d")
    @post.time = @post.start_time.strftime("%H:%M")
    @post.user_id = current_user.id
      if params[:back]
        render :new
      else @post.save!
        redirect_to @post
      end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path, notice:"削除しました"
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to posts_path, notice: "編集しました"
    else
      render 'edit'
    end
  end

  private
  def post_params
    params.require(:post).permit(:title, :task, :start_time, :time_required, :time_taken, :time_left, :check, :user_id, :category, :day, :time)
  end
end