class PostsController < ApplicationController
	before_action :signed_in_user, only: [:create, :destroy, :new]
	before_action :correct_user, only: :destroy
	
	def new
      @post = Post.new
	end
	
	def create
		@post = current_user.microposts.build(post_params)
		if @post.save 
			flash[:success] = "Post created!"
		else
			flash[:error] = "Error while creating a post!!!"
		end
		redirect_to root_url
	end
	
	def destroy
		@post.destroy
		redirect_to root_url
	end
	
	def show
		@post = Post.find(params[:id])
	end
	
	def index
		@posts = Post.all.paginate(page: params[:page])
	end
	
	private
  
	def post_params
		params.require(:post).permit(:content, :name)
	end
	
	def correct_user
		@post = current_user.posts.find_by(id: params[:id])
		redirect_to root_url if @post.nil?
    end
	
end
