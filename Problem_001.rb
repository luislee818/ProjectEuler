# Problem 001
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
#
# Find the sum of all the multiples of 3 or 5 below 1000.

class NaturalNumberFinder
  def get_numbers_of_multiples(max, *multiples)
    matched_numbers = (1...max).select do |x| 
      multiples.select { |y| x % y == 0 }.count > 0
    end
  end
end

finder = NaturalNumberFinder.new
numbers = finder.get_numbers_of_multiples(1000, 3, 5)
p numbers
puts numbers.inject(:+) 
