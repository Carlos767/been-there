class UserController < ApplicationController
  
  def new
  end

  def create
    user = User.new(
      full_name: params[:full_name],
      email: params[:email],
      password: params[:password]
      )
    if user.save
      session[:user_id] = user.id
      flash[:success] = "Successfully made account!"
      redirect_to '/articles'
    else
      flash[:warning] = "Invalid email or password"
      redirect_to '/signup'
    end
  end
end
