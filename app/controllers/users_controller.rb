class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    #debugger
  end
  def new
    #debugger
    @user = User.new
  end
  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user #redirect_to user_url(@user)
    else
      flash.now[:alert] = "Complete the Fields!"
      render 'new'
    end
  end
  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
