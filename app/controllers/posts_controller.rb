class PostsController < ApplicationController
  def index
    @post = Post.new
    @posts = Post.all.reverse
    @categories = Category.all
   
  end

  def new
    @categories = Category.all
    @post = Post.new
    @posts = Post.all
  end
  
  def comment
    # comment = Comment.new(comment_params)
    Comment.create(post_id: params[:post_id], content: params[:content])
    redirect_to :back
  end
  def create
    post = Post.new(post_params)
    post.save
   # redirect_to :main
    redirect_to :back
  end
  
  def show
    @post = Post.find(params[:id])
  end
  
  def destroy
     @post = Post.find(params[:id])
     @post.delete
     
     redirect_to posts_path
  end
  
  def edit
    @categories=Category.all
    @post = Post.find(params[:id])
  end
  
  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
  
    redirect_to posts_path
  end
  
  private
  def post_params
    params.require(:post).permit(:category_id, :body, :title, :username)
  end
  # def comment_params
  #   params.require(:comment).permit(:post_id, :content)
  # end
  # def update_view
  #     @one_post = Post.find(params[:post_id])
  # end
end