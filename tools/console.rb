require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

### WRITE YOUR TEST CODE HERE ###
drive_in1 = DriveIn.new("name1")
movie_screen1 = MovieScreen.new("movieTitle1", 2, drive_in1)
car1 = Car.new(1)
movie_screen1.add_car(car1)

binding.pry

0