class UserSessionsController < ApplicationController
  def new
  end

  def create
    @current_user = User.find_by_email(params[:email])
    if @current_user
      session[:user_id] = current_user.id
      redirect_back_or_to(events_path)
    else
      render 'new'
    end
  end

  def destroy
    redirect_to root
  end
end
