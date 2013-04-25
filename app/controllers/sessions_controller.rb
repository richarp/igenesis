class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      if params[:remember_me]
        cookies.permanent[:auth_token] = user.auth_token
      else
        cookies[:auth_token] = user.auth_token
      end
      redirect_to root_url, :notice => "Session iniciada!"
    else
      flash.now.alert = "Email o password incorrectos"
      render "new"
    end
  end



  def destroy
    cookies.delete(:auth_token)
    redirect_to root_url, :notice => "Sesion cerrada!"
  end
end
