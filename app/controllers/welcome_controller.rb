class WelcomeController < ApplicationController
  def index
    cookies[:course] = 'Ruby on Rails Course[COOKIE]'
    session[:course] = 'Ruby on Rails Course[SESSION]'
    @name = params[:name]
  end
end
