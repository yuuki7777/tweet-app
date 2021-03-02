class PostsController < ApplicationController
  before_action :set_user_info, {only: [:index]}

  def index
    @posts = Post.all.order(created_at: :desc)
    
  end

  def new
   
  end

  def show
    
  end

  

  def create
    @post = Post.new(content: params[:content], image_post: "noimage.png")
    
    if @post.save
       image = params[:image]
       @post.image_post = "#{@post.id}.jpg"
       File.binwrite("public/posts_image/#{@post.image_post}", image.read)
    end

    if @post.save
       redirect_to("/posts/index")
    end
  end
end
