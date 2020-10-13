class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new
    if @user.save
      render show
    else
      render new
    end
  end

  def show
    @user = User.find(params[:id])
  end
end
