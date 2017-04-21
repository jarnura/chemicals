class StatesController < ApplicationController
 	def index
		@state = State.all
	end
	
	def new
		@state = State.new
	end
	
	def create
		@state = State.new(state_params)
		if @state.save
			redirect_to states_path, :notice => "state saved"
		else
			render "new"
		end
	end
	
	def edit
	
	end
	
	def update
	
	end
	
	def show
		@state = State.find(params[:id])
		@chemicals = @state.chemicals
	end
	
	def destroy
	
	end
	
	def state_params
		params.require(:state).permit(:name)
	end
end
