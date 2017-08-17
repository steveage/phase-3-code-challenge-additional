# Object Relations Assessment

## Your Task

For this challenge, you have been given the job of creating a command line interface for your local drive-in movie theater, Happy's Sunset Drive-In! You have been asked to create a tracking tool that allows employees to know how many cars are at each movie screen.  The drive-in has many screens, and each screen can have many cars.  For the safety of all viewers, there is a limit to the number of cars that can be at a movie screen.  

## Notes

Your goal is to build out all of the methods listed in the deliverables and connect the required classes to a command line interface.

Do your best to follow Ruby best practices. For example, use higher-level array methods such as `map`, `select`, and `find` when appropriate in place of `each`

We've provided you with a run.rb file, including initial prompts that you can use to run your code. To start the CLI, run `ruby bin/run.rb`.

<!-- Console required? You'll be able to test out the methods that you write here. -->

**To Submit** - once you've completed all the deliverables, please copy/paste your three class definitions into the `solution.rb` file. Please don't submit the lab until we give you the signal.

## Deliverables

Implement all of the methods described below

### DriveIn

+ DriveIn#screens
  + returns all movie screens
+ DriveIn#cars
  + this method should return all cars currently at all screens
+ DriveIn#full_house?
  + returns true if all movie screens are at capacity

### MovieScreen

+ MovieScreen#car_count
  + Returns the current number of cars at this movie screen
+ MovieScreen#at_capacity?
  + Checks to see if this screen is at capacity for cars
+ MovieScreen#add_car
  + Adds an instance of a car to this movie screen if the movie screen is not at capacity and increases the car count by one
+ MovieScreen.all_screens
  + Returns all movie screens

### Car

+ Car.all
  + Returns all cars
+ Car.movie_screen
  + Returns the movie screen this car is at
