class ChemicalsController < ApplicationController
	include SessionsHelper
	def index
		@chemicals = Chemical.all
  if params[:search]
    @chemicals = Chemical.search(params[:search]).order("created_at DESC")
  else
    @chemicals = Chemical.all.order("created_at DESC")
  end
	end
	
	def new
		@chemical = Chemical.new
		@category = Category.all
		@state = State.all
		@manufacture = Manufacture.all
	end
	
	def create
		@chemical = Chemical.new(chemical_params)
		if @chemical.save
			redirect_to chemicals_path, :notice => "chemical saved"
		else
			render "new"
		end
	end
	
	def edit
		@chemical = Chemical.find(params[:id])
	end
	
	def update
		@chemical = Chemical.find(params[:id])
		if @chemical.update_attributes(chemical_params)
			redirect_to chemical_path, :notice => "successfully uploaded"
		else
			render "edit"
		end
	end 
	
	def show
		@chemical = Chemical.find(params[:id])
	end
	
	def destroy
		@chemical = Chemical.find(params[:id])
		@chemical.destroy
		redirect_to chemicals_path, :notice => "chemical has beeb deleted"
	end
	
	def chemical_params
		params.require(:chemical).permit(:name, :chemical_name, :category_id, :cas, :description, :manufacture_id, :melting_point, :boiling_point, :molecular_weight, :hazardous_level, :safety_description, :transport_info, :place, :production, :state_id)
	end


end
