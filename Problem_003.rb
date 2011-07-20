#The prime factors of 13195 are 5, 7, 13 and 29.

#What is the largest prime factor of the number 600851475143 ?

num = 600851475143 
prime = num / 2 + 1
while prime > 1
  break if num % prime == 0
  prime -= 1
end
puts prime
