class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save 
      flash[:success] = "Welcome to this Sample App, yo!"
      redirect_to @user #same as user_path(@user)
    else
      render 'new'
    end
  end
end
