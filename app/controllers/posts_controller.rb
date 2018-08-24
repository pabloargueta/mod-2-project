class PostsController < ApplicationController
  def index
    @posts = Post.all.order("created_at DESC").select{|post| post.user.hoa == current_user.hoa}
  end
end
