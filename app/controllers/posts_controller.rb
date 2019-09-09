class PostsController < ApplicationController
  before_action :signed_in?, only: [:new, :create] 
  def new
    @post = Post.new
  end

  

  def index
  end
end
