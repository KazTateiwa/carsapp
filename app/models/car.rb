class Car

  def initialize(make, year)
    @make = make
    @year = year
    @speed = 0

  end

  def make
    @make
  end

  def year
    @year
  end

  def speed
    @speed
  end

  def accelerate
    @speed = @speed + 10
  end

end
