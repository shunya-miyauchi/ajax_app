class UsersController < ApplicationController

  def new
    @users = User.all
  end

  def create
    @user = User.new
    if @user.save
      redirect_to blogs_path
    else
      render:new
    end
  end

  def show
    @user = User.find(params[:id])
  end

end
