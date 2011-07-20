x, y, sum = 1, 1, 0
while y < 100
  sum += (x + y)
  x, y = x + 2*y, 2*x + 3*y
	puts "after x: #{x}, y: #{y}, sum: #{sum}"
end
 
puts "Sum is #{ sum }."

