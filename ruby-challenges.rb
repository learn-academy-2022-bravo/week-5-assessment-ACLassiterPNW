# ASSESSMENT 5: Ruby Coding Practical Questions
# MINASWAN

# --------------------1) Create a method that takes in an array of words and a single letter and returns all the words that contain that particular letter.

beverages_array = ['coffee', 'tea', 'juice', 'water', 'soda water']

letter_o = 'o'
# Expected output: ['coffee', 'soda water']
letter_t = 't'
# Expected output: ['tea', 'water', 'soda water']
# Method name: particular_word_array
def particular_word_array(array, letter_o, letter_t)
    # Select words that include letter_o
     beverages_array.select {|word| word.include? letter_o}
    # Select words that include letter_t
     beverages_array.select {|word| word.include? letter_t}
end
puts particular_word_array
# I am stuck on this problem. I keep receiving an error that says "wrong number of arguments (given 0, expected 3)"


# -------------------2) Create a method that takes in an array of numbers and returns the sum of the numbers. Use the test variables provided.

# Method name: sum_of_numbers
# Input: array of numbers
# Output: sum of the numbers in the given array 
# use .sum to sum all numbers in an array
# use 'puts' to display output

nums_array1 = [42, 7, 27]
# Expected output: 76
puts nums_array1.sum

nums_array2 = [25, 17, 47, 11]
# Expected output: 100
puts nums_array2.sum


# --------------------3a) Create a class called Bike that is initialized with a model, wheels, and current_speed. The default number of wheels is 2. The current_speed should start at 0. Create a bike_info method that returns a sentence with all the data from the bike object.

# Class name: Bike
# Class attributes: model, wheels, current_speed
# I think I need an attr_accessor to be able to access the speed for challenge 3b. 
class Bike
  attr_accessor :current_speed
    def initialize(model, wheels, current_speed)
      @model = model
      @wheels = 2
      @current_speed = 0
    end

    # Update model name to be 'Trek'
    def change_model
      @model = 'Trek'
    end

    # Method: bike_info
    def bike_info
        "The #{model} bike has #{wheels} wheels, and is going #{current_speed} mph." 
      end  
   
  
# Expected output example: 'The Trek bike has 2 wheels and is going 0 mph.'

# I am fairly sure I've written out my class and method as required, but I'm not getting an output. I'm typing in ruby ruby-challenges.rb in my terminal and receiving the following error message: undefined local variable or method 'ruby' for main:Object (NameError). I also get undefined local variable in irb. 

# -------------------3b) Add the ability to pedal faster and brake. The pedal_faster method should increase the speed by a given amount. The brake method should decrease the speed by a given amount. The bike cannot go negative speeds.

# Expected output example: my_bike.pedal_faster(10) => 10
# Expected output example: my_bike.pedal_faster(18) => 28
# Expected output example: my_bike.brake(5) => 23
# Expected output example: my_bike.brake(25) => 0

# I want my pedal_faster and brake methods to allow different inputs, but I'm having trouble determing the best way to write this. 
  def pedal_faster
    @current_speed += ()
  end

  def brake
    @current_speed -= ()
  end

end

