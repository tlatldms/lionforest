class PostsController < ApplicationController
  def index
    @post = Post.new
    @posts = Post.all
  end

  def new
    @post = Post.new
    @posts = Post.all
  end
  
  def create
    post = Post.new(post_params)
    post.save
   # redirect_to :main
    redirect_to :back
  end
  def destroy
     @one_post = Post.find(params[:post_id])
     @one_post.destroy
      
     redirect_to ''
  end
  
  private
  def post_params
    params.require(:post).permit(:body, :title, :username)
  end
  # def update_view
  #     @one_post = Post.find(params[:post_id])
  # end
  
end
