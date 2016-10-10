class PostsController < ApplicationController
	before_action :logged_in_user, only: [:new, :create]
  def new
  	@post = Post.new
  end

  def index
  	@post = Post.all
  end

  def create
  	user = current_user
  	post = Post.new(user_id: user.id, content: params[:post][:content])
  	post.save
  	redirect_to posts_url
  end


  private

  	def logged_in_user
  		unless logged_in?
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
  	end

end
