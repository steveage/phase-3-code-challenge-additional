class MovieScreen
  attr_reader :capacity, :movie_title, :drive_in, :cars

  @@all = []

  def initialize(movie_title, capacity, drive_in)
    @movie_title = movie_title
    @capacity = capacity
    drive_in.screens << self
    @drive_in = drive_in
    @@all << self
    @cars = []
  end

  def number_of_viewers
    @cars.sum { |car| car.passenger_count }
  end

  def at_capacity?
    @cars.length >= @capacity
  end

  def available_spots
    @capacity - @cars.length
  end

  def add_car(car)
    if at_capacity?
      "Sold Out!"
    else
      car.current_movie_screen = self
      @cars << car
      "Enjoy!"
    end
  end

  def self.all_screens
    @@all
  end

end