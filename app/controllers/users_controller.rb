class UsersController < ApplicationController
  def index
  	@user = User.all
  end

  def new
  	@user = User.new
  end
  def create
  	@user = User.new(user_params)
		if @user.save
			redirect_to sessions_path, :notice => "sucessfully created"
		else
			render "new"
		end
  end
  def user_params
		params.require(:user).permit(:name, :ibn, :email, :company_name, :mobile_no, :job, :company_pro, :password)
	end
end
