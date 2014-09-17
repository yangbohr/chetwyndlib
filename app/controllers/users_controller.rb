class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
  end


  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    binding.pry
    respond_to do |format|
      if @user.save
        format.html { redirect_to search_url, notice: 'User was successfully created.' }
        format.json { render action: 'show', status: :created, location: @user }
      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

end
