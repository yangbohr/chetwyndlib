class RegistrationsController < ApplicationController
  before_action :authenticate_user!
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.email = "#{@user.account}@test.com"
    if @user.save
      redirect_to users_url 
    else
      render action: 'new'
    end
  end
   
  def update
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to users_url
  end


private

  def user_params
    params.require(:user).permit(:account, :first_name, :last_name, :password, :password_confirmation, :role)
  end

end


