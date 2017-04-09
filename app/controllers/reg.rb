class RegisterchemicalsController < ApplicationController
def index
		@registerchemical = Registerchemical.all
	end
	
	def new
		@registerchemical = Registerchemical.new
	end
	
	def create
		@registerchemical = Registerchemical.new(registerchemical_params)
		if @registerchemical.save
			redirect_to registerchemicals_path, :notice => "registerchemical saved"
		else
			render "new"
		end
	end
	
	def edit
	
	end
	
	def update
	
	end
	
	def show
		@registerchemical = Registerchemical.find(params[:id])
	end
	
	def destroy
	
	end
	
	def registerchemical_params
		params.require(:registerchemical).permit( :marketing_name, :cas, :chemical_name, :other_name, :molecular_formula, :structural_formula, :molecular_weight, :number_amw, :weight_amw, :percentage_less_full, :percentage_less_half, :degree_of_purity, :hazardous_imp, :non_hazardous_imp, :year, :tonne)
	end
end
