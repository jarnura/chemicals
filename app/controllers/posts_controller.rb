class PostsController < ApplicationController
	def index
<<<<<<< HEAD
		@posts = Post.all
	end
	
	def new
		@post = Post.new
		@category = Category.all
	end
	
	def create
		@post = Post.new(post_params)
		if @post.save
			redirect_to posts_path, :notice => "post saved"
		else
			render "new"
		end
	end
	
	def edit
		@post = Post.find(params[:id])
	end
	
	def update
		@post = Post.find(params[:id])
		if @post.update_attributes(post_params)
			redirect_to post_path, :notice => "successfully uploaded"
		else
			render "edit"
		end
	end 
	
	def show
		@post = Post.find(params[:id])
	end
	
	def destroy
		@post = Post.find(params[:id])
		@post.destroy
		redirect_to posts_path, :notice => "post has beeb deleted"
	end
	
	def post_params
		params.require(:post).permit(:title, :body, :category_id, :author_id)
	end
	
=======
		@title = 'title';
	end
	
	def new
	
	end
	
	def create
	
	end
	
	def edit
	
	end
	
	def update
	
	end
	
	def show
	
	end
	
	def destroy
	
	end
	
	
>>>>>>> 9b9f316ada41e172021fe2b0da92aba2101b411d
end
