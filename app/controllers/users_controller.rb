class UsersController < ApplicationController

  # def index
  # end

  def build
    if !params.has_key?(:make) || params[:make].strip.empty?
      # raise "L"
      @make = "Make of car is missing"
      render "create.html.erb"
    elsif !params.has_key?(:year) || params[:year].strip.empty?
      @year = "Model year of car is missing"
      render "create.html.erb"
    else
      # save make in a cookie, so it can be accessed in the simulator
      cookies[:make] = params[:make]
      cookies[:year] = params[:year]
      # redirect to the game play page
      redirect_to "users/build"
    end
  end
end
