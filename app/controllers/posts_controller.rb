class PostsController < ApplicationController

  def index
    # find all Post rows
    @posts = Post.all
    # render posts/index view
  end

  def new
    # render posts/new view with new Post form
  end

  def create
    @post = Post.new
    @post["author"] = params["author"]
    @post["image"] = params["image"]
    @post["body"] = params["body"]
    @post.save
    redirect_to "/posts"
  end

end
