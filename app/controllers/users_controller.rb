class UsersController < ApplicationController
  
  
  def new
  
  end

  def show
    @user = User.find(params[:id])
  end 

  def create
  	
  end


  private

  	def user_params
	  	params.require(:user).permit(:name, :email, :password, :password_confirmation)
	  end

    

end
