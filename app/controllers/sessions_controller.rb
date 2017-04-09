class SessionsController < ApplicationController
  def index
  end
  def new
  	@user = User.new
  end
  def create
  	user = User.where(:name => params[:session][:name].downcase).first
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to chemicals_path
      # Log the user in and redirect to the user's show page.
    else
    	redirect_to sessions_path
    	 flash[:danger] = 'Invalid username/password combination' # Not quite right!
    end
end
  def destroy
    session[:user_id] = nil
    redirect_to login_path, notice: "Logged out!"
end
end
