#Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:

#1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

#By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

class Fibonacci
  def get_numbers(max)
    left, right = 1, 1
    numbers = []
    while left < max #4000000
      left, right = right, left + right 
      numbers << left
    end
    numbers
  end
end

fib = Fibonacci.new
numbers = fib.get_numbers(100)
p numbers.select { |x| x % 2 == 0}.inject(:+)
