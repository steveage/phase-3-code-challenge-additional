# Object Relations Code Challenge - DriveIn

For this challenge, we will be working with a drive-in movie domain.

We have three models: `DriveIn`, `MovieScreen`, and `Car`.

For this challenge, a `DriveIn` has many `MovieScreen`s, a `MovieScreen` has many `Car`s, and a `Car` belongs to a `MovieScreen`.

A `DriveIn` has many `Car`s through its `MovieScreen`s. A `Car` is only at one `DriveIn`.

**Note**: You should draw your domain on paper or on a whiteboard _before you start coding_. Remember to identify a single source of truth for your data.

## Topics

- Classes and Instances
- Class and Instance Methods
- Variable Scope
- Object Relationships
- Arrays and Array Methods

## Instructions

Build out all of the methods listed in the deliverables. The methods are listed in a suggested order, but you can feel free to tackle the ones you think are easiest. Be careful: some of the later methods rely on earlier ones.

**Remember!** This code challenge does not have tests. You cannot run `rspec` and you cannot run `learn`. You'll need to create your own sample instances so that you can try out your code on your own. Make sure your associations and methods work in the console before submitting.

We've provided you with a tool that you can use to test your code. To use it, run `ruby tools/console.rb` from the command line. This will start a `pry` session with your classes defined. You can test out the methods that you write here. You can add code to the `tools/console.rb` file to define variables and create sample instances of your objects.

Writing error-free code is more important than completing all of the deliverables listed - prioritize writing methods that work over writing more methods that don't work. You should test your code in the console as you write.

Similarly, messy code that works is better than clean code that doesn't. First, prioritize getting things working. Then, if there is time at the end, refactor your code to adhere to best practices. Examples of best practices might be to use higher-level array methods such as `map`, `select`, and `find` when appropriate in place of `each`, or, when you encounter duplicated logic, to extract it into a shared helper method.

**Before you submit!** Save and run your code to verify that it works as you expect. If you have any methods that are not working yet, feel free to leave comments describing your progress.

## Deliverables

Write the following methods in the classes in the files provided. Feel free to build out any helper methods if needed.

Deliverables use the notation `#` for instance methods, and `.` for class methods.

Some of the methods listed are provided to you in the starter code. You should check that they work correctly, and that you understand them.

### Initializers, Readers, and Writers

#### DriveIn

- `DriveIn#initialize(name)`
  - A drive-in should be initialized with a `name` as a string.
  - The name **cannot** be changed after the drive-in is initialized.
- `DriveIn#name`
  - should return the name of the `DriveIn`

#### MovieScreen

- `MovieScreen#initialize(movie_title, capacity, drive_in)`
  - A movie screen should be initialized with a movie title as a string, capacity (as an integer), and a `drive_in` object.
  - The movie title, capacity, and drive in **cannot** be changed after the MovieScreen is initialized.
- `MovieScreen#movie_title`
  - should return the movie title
- `MovieScreen#capacity`
  - should return the `MovieScreen`'s capacity
- `MovieScreen#drive_in`
  - should return the `DriveIn` associated with this `MovieScreen`
- `MovieScreen.all_screens`
  - Returns an array of all movie screens that have been created.

#### Car

- `Car#initialize(passenger_count)`
  - A car should be initialized with a `passenger_count` (as an integer).
  - the passenger count **can** be changed after the `Car` is initialized
- `Car#passenger_count`
  - Returns the number of passengers in the car.
- `Car.all`
  - Returns an array of all car instances that have been created.

### Object Relationship Methods

#### Car

- `Car#current_movie_screen`
  - Returns the current movie screen that a particular car is associated with.
- `Car#current_movie_screen=`
  - Assigns a movie screen object to a particular car to indicate which movie screen that car is currently at.
  - **Note:** this will happen _after_ a car has already been created.

#### MovieScreen

- `MovieScreen#cars`
  - Returns an array of all cars currently at this movie screen.

#### DriveIn

- `DriveIn#screens`
  - Returns an array of all movie screens at this drive-in.

### Aggregate Methods

#### MovieScreen

- `MovieScreen#number_of_viewers`
  - Returns the total number of passengers viewing the movie, from all the cars currently at this movie screen
- `MovieScreen#at_capacity?`
  - Returns a boolean. If the number of cars at this movie screen is equal to or above the capacity of the movie screen, returns `true`. Otherwise, returns `false`.
- `MovieScreen#available_spots`
  - Returns the number of spots for cars available at this movie screen. This should be the capacity minus the number of cars currently at this movie screen.
- `MovieScreen#add_car(car)`
  - Takes in a `Car` instance as the argument
  - Depending on the available capacity of the movie screen, associates the `Car` with this movie screen.
    - If the movie screen is _not_ at capacity, updates the car's current movie screen and returns the string `"Enjoy!"`.
    - If the movie screen is at capacity, it should return the string "Sold Out!", and should not associate the car to the movie screen.

#### DriveIn

- `DriveIn#whats_playing`
  - Returns an array of all the names of the movies playing at the movie screens at this drive-in.
- `DriveIn#full_house?`
  - Returns true if all movie screens at _this_ drive-in are at capacity.

## Rubric

### Build classes using OO Ruby Syntax

1. Class code has a syntax or runtime error. Code does not run at all, or exits with an error, or most Object-oriented deliverables are not implemented.
2. No syntax errors. Some deliverables function correctly. Mixes up syntax for class and instance methods, refers to variables in the wrong scope, or uses `self` incorrectly, leading to logical errors. Method and variable names do not correspond to their respective behavior or data types. Methods might be duplicated, or code includes unused methods without a clear purpose.
3. Correct class syntax for the deliverables submitted. May be incomplete or missing deliverables. Most code generally expresses intent: method and variable names match their behaviors and data types. Methods are not duplicated. Code does not have unused or methods without a clear purpose.
4. Correct class syntax for all of the submitted code. Code express intent: method and variable names indicate their behavior and data types. Some deliverables might not be complete. No methods are duplicated.
5. Correct class syntax for all deliverables, all deliverables complete. Code expresses intent: method and variable names indicate their behavior and data types, with the correct pluralization. No methods are duplicated. All methods have a clear purpose. Shared functionality is factored out into helper methods. Appropriate use of attr\_\* macros.

### Model relationships using Ruby

1. Submitted code does not relate models to each other through methods or data.
2. Models relate to each other, but incompletely. Relationship methods are missing or have logic errors, store data on the wrong model, or are missing a single source of truth.
3. Models relate to each other as specified in the instructions. Data is stored on the correct models, relationship methods are defined on the right models, and the logic correctly implements the relationships. Aggregate methods using the relationships may be incomplete or have errors.
4. Models relate to each other as specified in the instructions. Aggregate methods work, but might not use helper methods effectively.
5. Models relate to each other as specified in the instructions. Aggregate methods use helper methods effectively.

### Solve problems with collections of data

1. Does not attempt to solve collections problems, or has syntax errors in collection code.
2. Collections methods have runtime or logic errors. Collections methods may use the wrong iterators, have incorrect logic, or many of the collections methods are unimplemented.
3. Some collections methods work correctly, though several might be unimplemented. Code may not use the appropriate built in method for each problem, or duplicate logic instead of using helper methods.
4. All collections methods are implemented and function correctly. Most use appropriate higher-level built-in methods. Methods may duplicate logic instead of using helper methods.
5. All collections methods implemented and function correctly, using appropriate higher-level built-in methods. Shared logic is factored out to helper methods.
