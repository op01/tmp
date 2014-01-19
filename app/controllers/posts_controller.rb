class PostsController < ApplicationController
  def index
    show_unpublished = session[:show_unpublished] || false
    if show_unpublished
      @posts = Post.all
    else
      @posts = Post.where(published: true)
    end
  end

end
