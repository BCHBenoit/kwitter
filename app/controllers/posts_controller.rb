class PostsController < ApplicationController
  def index
    @post_table = Post.all
    
    @users_table = User.all
    
  end

  def create
    @post_table = Post.all
    @post_new_row = Post.new
    @post_new_row["body"] = params["body"]
    @post_new_row["user_id"] = session["user_id"]
    @post_new_row.save
    redirect_to "/posts"
  end
end
