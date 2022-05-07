# ASSESSMENT 5: Ruby Coding Practical Questions
# MINASWAN

# --------------------1) Create a method that takes in an array of words and a single letter and returns all the words that contain that particular letter.

beverages_array = ['coffee', 'tea', 'juice', 'water', 'soda water']

letter_o = 'o'
# Expected output: ['coffee', 'soda water']
letter_t = 't'
# Expected output: ['tea', 'water', 'soda water']
# Method name: particular_word_array
# use 'p' to display output
def particular_word_array(array, letter)
     array.select {|word| word.include? letter} #checks if a word in an array contains a certain letter
end
p particular_word_array(beverages_array, letter_o) #returns words that contain the letter o
p particular_word_array(beverages_array, letter_t) #returns words that contain the letter t

# -------------------2) Create a method that takes in an array of numbers and returns the sum of the numbers. Use the test variables provided.

# Method name: sum_of_numbers
# Input: array of numbers
# Output: sum of the numbers in the given array 
# use .sum to sum all numbers in an array
# use 'p' to display output

nums_array1 = [42, 7, 27]
# Expected output: 76
nums_array2 = [25, 17, 47, 11]
# Expected output: 100

def sum_of_numbers(array)
  array.sum #sum all numbers in a given array
end
p sum_of_numbers(nums_array1) #returns the sum of all numbers in the given array
p sum_of_numbers(nums_array2) #returns the sum of all numbers in the given array


# --------------------3a) Create a class called Bike that is initialized with a model, wheels, and current_speed. The default number of wheels is 2. The current_speed should start at 0. Create a bike_info method that returns a sentence with all the data from the bike object.
  
# Expected output example: 'The Trek bike has 2 wheels and is going 0 mph.'

# -------------------3b) Add the ability to pedal faster and brake. The pedal_faster method should increase the speed by a given amount. The brake method should decrease the speed by a given amount. The bike cannot go negative speeds.

# Expected output example: my_bike.pedal_faster(10) => 10
# Expected output example: my_bike.pedal_faster(18) => 28
# Expected output example: my_bike.brake(5) => 23
# Expected output example: my_bike.brake(25) => 0

# Class name: Bike
# Class attributes: model, wheels, current_speed
class Bike
    def initialize(model, current_speed=0) #model is dynamic, current_speed has an initial value of 0
      @model = model
      @wheels = 2 #default number of wheels is 2
      @current_speed = current_speed

    def bike_info #method that returns a sentence with all the data from the bike object.
        "The #{@model} bike has #{@wheels} wheels and is going #{@current_speed} mph." 
    end  

    def pedal_faster increase_speed
      @current_speed += increase_speed #increases the current speed by a given amount
    end
 
    def brake decrease_speed
      @current_speed -= decrease_speed #decreases the current speed by a given amount
      if @current_speed.positive? #if the current speed is a positive value, return the current speed. 
        @current_speed
      elsif @current_speed.negative? #if the current speed is a negative value, return the current speed as 0.
      @current_speed = 0
      end
    end
  end
end
  
  my_bike = Bike.new "Trek" #update model to 'Trek'
  p my_bike.bike_info #returns 'The Trek bike has 2 wheels and is going 0 mph.'
  
p my_bike.pedal_faster(10) #increase speed by 10 (from 0)
p my_bike.pedal_faster(18) #increase speed by 18 (from 10)
p my_bike.brake(5) #decrease speed by 5 (from 23)
p my_bike.brake(25) #decrease speed by 25 (from 23)