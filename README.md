# Object Relations Assessment

## Topics

- Classes vs Instances
- Variable Scope ( Class, Instance, Local )
- Object Relationships
- Arrays and Array Methods
- Class Methods

## Your Task

For this challenge, you have been given the job of creating a command line interface for your local drive-in movie theater, Happy's Sunset Drive-In! You have been asked to create a tracking tool that allows employees to know how many cars are at each movie screen.  The drive-in has many screens, and each screen can have many cars.  For the safety of all viewers, there is a limit to the number of cars that can be at a movie screen.  

 ## Notes

 Your goal is to build out all of the methods listed in the deliverables.

 We've provided you with a console that you can use to test your code. To enter a console session, run `ruby tools/console.rb` from the command line. You'll be able to test out the methods that you write here. Take a look at that file to see how you can pre-define variables and create object instances, rather than manually doing it in every single console session.

 **Remember!** This is a code challenge without tests. You cannot run `rspec` you cannot run `learn`. You'll need to create your own sample instances for testing purposes. Make sure your associations and methods work in the console before submitting.


## Deliverables

Implement all of the methods described below

### DriveIn

+ DriveIn#screens
  + returns all movie screens
+ DriveIn#cars_with
  + this method takes in an integer that represents the number of people in a car. This method should return all cars that have that amount of people
+ DriveIn#full_house?
  + returns true if all movie screens are at capacity
+ DriveIn#whats_playing
  + returns the names of all movies currently playing
+ DriveIn#available_movies
  + returns a hash with a top level key for every available movie, each key will point
  to a hash with a key of 'available_spots', which points to the amount of spots available
  at that screening as well as a key of 'people_watching' that points to the total number of people watching the movie.

  Ex:
  ```
  {
    it:{
      available_spots: 10,
      people_watching: 30
    },
    spider-man 2:{
      available_spots: 0,
      people_watching: 150
    }  
  }
  ```



### MovieScreen

+ MovieScreen#cars
  + Returns an array of all cars currently at _this_ movie screen
+ MovieScreen#at_capacity?
  + Returns a boolean.  The return will be true if the number of cars at _this_ movie screen is at capacity
+ MovieScreen#add_car
  + Adds an instance of a car to _this_ movie screen if the movie screen is not at capacity, creates a new car instance and returns the string "Enjoy!".  If the movie screen is at capacity, return a string that says 'Movie is sold out'
+ MovieScreen.all_screens
  + Returns all movie screens
+ MovieScreen#how_many_viewers?
  + returns a head count of how many people are watching the movie

### Car

+ Car.all
  + Returns all cars
+ Car#movie_screen
  + Returns the movie screen _this_ car is at
+ Car#passenger_count
  + Returns the number of people within _this_ car
