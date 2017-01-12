class CategoriesController < ApplicationController
	def index
		@title = 'title';
	end
	
	def new
	
	end
	
	def create
		Category.create(category_params)
	end
	
	def edit
	
	end
	
	def update
	
	end
	
	def show
	
	end
	
	def destroy
	
	end
	
	def category_params
		params.require(:category).permit(:name)
	end
	
	
	
	
	
	
end
