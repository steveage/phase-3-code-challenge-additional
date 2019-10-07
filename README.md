# Object Relations Code Challenge - DriveIn

For this challenge, we will be working with a drive-in movie domain.

We have three models: `DriveIn`, `MovieScreen`, and `Car`.

For this challenge, a `DriveIn` has many `MovieScreen`s, a `MovieScreen` has many `Car`s, and a `Car` belongs to a `MovieScreen`.

A `DriveIn` has many `Car`s through it's `MovieScreen`s. A `Car` is only at one `DriveIn`.

Note: it can be helpful to draw your domain on paper or on a whiteboard before you start coding. Remember to identify a single source of truth for your data.

## Topics

- Classes and Instances
- Class and Instance Methods
- Variable Scope
- Object Relationships
- Arrays and Array Methods

## Instructions

Build out all of the methods listed in the deliverables. The methods build on each other, so you should write the methods in order.

**Remember!** This code challenge does not have tests. You cannot run `rspec` and you cannot run `learn`. You'll need to create your own sample instances so that you can try out your code on your own. Make sure your associations and methods work in the console before submitting.

We've provided you with a console that you can use to test your code. To enter a console session, run `ruby tools/console.rb` from the command line. You'll be able to test out the methods that you write here. Add code to the `tools/console.rb` file to define variables and create sample instances of your objects.

Writing error-free code is more important than completing all of the deliverables listed - prioritize writing methods that work over writing more methods that don't work. You should test your code in the console as you write.

Do your best to follow Ruby best practices. For example, use higher-level array methods such as `map`, `select`, and `find` when appropriate in place of `each`. When you encounter duplicated logic, you can extract it into a shared helper method.

## Deliverables

Write the following methods in the classes in the files provided. Feel free to build out any helper methods if needed.

Deliverables use the notation `#` for instance methods, and `.` for class methods.

Some of the methods listed are provided to you in the starter code. You should check that they work correctly, and that you understand them.

### Initializers, Readers, and Writers

#### DriveIn

- `DriveIn.initialize(name)`
  - A drive-in should be initialized with a `name` as a string.
- `DriveIn#name`
  - should return the name of the `DriveIn`
  - The name **cannot** be changed after the drive-in is initialized.

#### MovieScreen

- `MovieScreen.initialize(movie_title, capacity, drive_in)`
  - A movie screen should be initialized with a movie title as a string, capacity (as an integer), and a `drive_in` object.
- `MovieScreen#movie_title`
  - should return the movie title
  - The movie title **cannot** be changed after the MovieScreen is initialized.
- `MovieScreen#capacity`
  - should return the `MovieScreen`'s capacity
  - The capacity **cannot** be changed after the MovieScreen is initialized.
- `MovieScreen#drive_in`
  - should return the `DriveIn` associated with this `MovieScreen`
  - The drive in **cannot** be changed after the MovieScreen is initialized.
- `MovieScreen.all_screens`
  - Returns an array of all movie screens that have been created.

#### Car

- `Car.initialize(passenger_count)`
  - A car should be initialized with a `passenger_count` (as an integer).
- `Car#passenger_count`
  - Returns the number of passengers in the car.
  - the passenger count **cannot** be changed after the `Car` is initialized
- `Car.all`
  - Returns an array of all car instances that have been created.

### Object Relationship Methods

#### Car

- `Car#movie_screen`
  - Returns the movie screen that a particular car is associated with
- `Car#movie_screen=`
  - Assigns a screen object to a particular car.
  - **Note:** this will happen _after_ a car has already been created.

#### MovieScreen

- `MovieScreen#cars`
  - Returns an array of all cars currently at _this_ movie screen.

#### DriveIn

- `DriveIn#screens`
  - Returns an array of all movie screens at _this_ drive-in.

### Aggregate Methods

#### MovieScreen

- `MovieScreen#how_many_viewers`
  - Returns the total number of people viewing the movie
- `MovieScreen#at_capacity?`
  - Returns a boolean. If the number of cars at this movie screen is equal to or above the capacity, return `true`. Otherwise, return `false`.
- `MovieScreen#available_spots`
  - Returns the number of spots for cars available at a particular screen - the amount of the capacity that isn't currently occupied by a car
- `MovieScreen#add_car(car)`
  - Takes in a `Car` instance as the argument
  - Associates the `Car` with _this_ movie screen.
    - If the movie screen is _not_ at capacity, it associates the objects and returns the string "Enjoy!".
    - If the movie screen is at capacity, it should return the string "Sold Out!" (and does not associate the car to the movie screen)

#### DriveIn

- `DriveIn#full_house?`
  - Returns true if all movie screens at _this_ drive-in are at capacity.
- `DriveIn#whats_playing`
  - Returns an array of all the names of the movies playing at _this_ drive-in.
- `DriveIn#available_movies`
  - Returns an array with a representing every available movie at _this_ drive-in.
  - Each item in the will point to _a hash_ with three keys:
    - `movie`
      - name of the movie
    - `available_spots`
      - Should represent the number of spots available at this movie.
    - `people_watching`
      - Should represent the total number of people watching this movie.

For example:

```ruby
[
  {
    movie: 'The Shawshank Redemption',
    available_spots: 10,
    people_watching: 30
  },
  {
    movie: 'Spider Man 2',
    available_spots: 0,
    people_watching: 150
  }
]
```

## Rubric

### Build classes using OO Ruby Syntax

1. Class code has a syntax or runtime error. Code does not run at all, or exits with an error, or most Object-oriented deliverables are not implemented.
2. Code runs without error, some deliverables function correctly. May use the wrong syntax for class or instance methods, use variables in the wrong scope, or have duplicated methods.
3. Correct class syntax and logic for most deliverables. May be incomplete or missing a small number of deliverables. Methods might be duplicated, or might not use attr\_\* macros appropriately.
4. Correct class syntax and logic for all of the submitted code. Uses attr\_\* macros appropriately. Class and instance methods and variables have correct scope, no methods duplicated. Some deliverables might not be complete.
5. Correct class syntax and logic for all deliverables, all deliverables complete. Shared functionality factored out into helper methods. Appropriate use of attr\_\* macros.

### Model relationships using Ruby

1. Submitted code does not relate models to each other through methods or data.
2. Models relate to each other, but incompletely. Code might not use a single source of truth or store data on the wrong model. Code may be missing methods for accessing the related model.
3. Models relate to each other as specified in the instructions. Data is stored on the correct models. Methods built using relationships may be incomplete.
4. Models relate to each other with belongs_to and has_many relationships. Methods built using those relationships work, but may be inelegant or duplicative.
5. Models relate to each other with belongs_to, has_many, and has_many_through relationships.

### Solve problems with collections of data

1. Does not attempt to solve collections problems, or has syntax errors in collection code.
2. Collections methods have errors. May use the wrong iterator, have incorrect logic, or have more than two collections methods left unimplemented.
3. Collections methods work correctly, with one or two unimplemented or with errors. Code may not use the appropriate built in method for each problem, duplicate logic instead of using helper methods, or have non-functional lines.
4. All collections methods are implemented and function correctly. Most use appropriate higher-level built-in methods. May duplicate logic instead of using helper methods.
5. All collections methods implemented and function correctly, using appropriate higher-level built-in methods. Shared logic is factored out to helper methods.
