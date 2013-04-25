class UsersController < ApplicationController


  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to root_url, :notice => "Inicie sesion!"
    else
      render "new"
    end
  end
  def list
    @users=User.all
  end
end
