class SessionsController < ApplicationController

  def new

  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to "/login"
    else
      session[:name] = params[:name]
      render :template => 'secrets/show'
    end
  end

  def destroy
    session.clear
    redirect_to "/login"
  end

end
