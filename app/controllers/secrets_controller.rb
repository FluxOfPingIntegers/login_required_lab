class SecretsController < ApplicationController

  def show
    redirect_to "/login" unless logged_in?
    @name = session[:name]
  end

end
