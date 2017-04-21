class CategoriesController < ApplicationController
	def index
		@category = Category.all
	end
	
	def new
		@category = Category.new
	end
	
	def create
		@category = Category.new(category_params)
		if @category.save
			redirect_to categories_path, :notice => "category saved"
		else
			render "new"
		end
	end
	
	def edit
	
	end
	
	def update
	
	end
	
	def show
		@category = Category.find(params[:id])
		@chemicals = @category.chemicals
	end
	
	def destroy
	
	end
	
	def category_params
		params.require(:category).permit(:name)
	end


end
