class PostsController < ApplicationController
  before_action :signed_in?, only: [:new, :create] 
  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      #Success
      redirect_to posts_path
    else
      render 'new'
    end
  end

  def index
  end

  private

    def post_params
      params.require(:post).permit(:title, :body)
    end

end
