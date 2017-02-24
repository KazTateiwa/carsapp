class CarsController < UsersController
  def create
    # create a car based on make and model year of the car to be simulated.
    @make = params[:make]
    @year = params[:year]
    @speed = 0
  end


end
