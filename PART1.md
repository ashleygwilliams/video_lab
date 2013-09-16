# Part 1

We will be building a simple application that simulates a video store. The application will calculate and print a statement of a customer's charges at a video store.

The program receives information on what movie a user rented and for how long. Then based on the movie title it determines what type of movie it is (either regular, new release, or childrens), which, in conjunction with how long the movie was rented, allows the program to compute the charge for the rental. 

In addition to charges, the program also keeps track of frequent renter points, which vary depending on whether the movie is a new release or not.

## Design Questions

- Based on the spec, what objects do you anticipate needing?

- What methods would each of those objects require?

- Draw a simple class diagram to demonstrate your thoughts.

## Coding Exercise
Let's build a very naive version of this application (for the purposes of fixing it up later!). 

1) Build 3 classes, Movie, Rental, and Customer.

- `Movie` should take two arguments, `title` and `price_code`, both of which should be initialized in the constructor.

 `price_code` will be determined based on a set of constants that belong to MOVIE:

 ```ruby
 REGULAR = 0
 NEW_RELEASE = 1
 CHILDRENS = 2
 ```

- `Rental` should take two arguments as well, a Movie and `days_rented`.

- `Customer` should take a single argument `name` and should have two methods `add_rental` and `statement`

## Reflection

- Does our naive application match your original class diagram? Describe the differences.

- We often refactor code, not because it doesn't work, but because it needs to be maintainable. Being maintainable partially means that small features or changes do not require a lot of change to our code. 

 Look at the current code, what changes or feature additions could you anticipate? List them.

 Is our current code easy to change? Why or why not? Explain your answer using an example from your list of potential changes or feature additions.

 If you could only pick one portion of this code to refactor, what would you pick and why?