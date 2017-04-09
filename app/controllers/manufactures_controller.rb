class ManufacturesController < ApplicationController
	include SessionsHelper
	def index
		@manufacture = Manufacture.all
       
	end
	
	def new
		@manufacture = Manufacture.new
	end
	
	def create
		@manufacture = Manufacture.new(manufacture_params)
		if @manufacture.save
			redirect_to manufactures_path, :notice => "manufacture saved"
		else
			render "new"
		end
	end
	
	def edit
	
	end
	
	def update
	
	end
	
	def show
		@manufacture = Manufacture.find(params[:id])
		@name = @manufacture.name
		@chemicals = @manufacture.chemicals
	end
	
	def destroy
	
	end
	
	def manufacture_params
		params.require(:manufacture).permit(:name, :link)
	end
end