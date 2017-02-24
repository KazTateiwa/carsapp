class CarsController < ApplicationController

  def index
  end

  def build
    # create a car based on make and model year of the car to be simulated.
    make = params[:make]
    year = params[:year]
    # @speed = 0
    @car = Car.new(make, year)
    # redirect_to 'build.html.erb'
  end
end
# if !params.has_key?(:make) || params[:make].strip.empty?
#   # raise "L"
#   @make = "Make of car is missing"
#   if !params.has_key?(:year) || params[:year].strip.empty?
#     @year = "Model year of car is missing"
#   end
#   render "index.html.erb"
# end
#
#
# if (params.has_key?(:make) && !params[:make].strip.empty? && params.has_key?(:year) && !params[:year].strip.empty?)
#   car = Car.new(params[:make], params[:year])
#   session[:car] = car.to_yaml
#   # redirect to the game play page
#   redirect_to "/cars/build"
# end
