# class FizzBuzz < ApplicationRecord

def fizz_buzz(n)
  if n % 3 == 0 && n % 5 == 0
    "FizzBuzz"
  elsif n % 3 == 0
    "Fizz"
  elsif n % 5 == 0
    "Buzz"
  else
    n.to_s
  end
end

puts fizz_buzz(1)
puts fizz_buzz(6)
puts fizz_buzz(10)
puts fizz_buzz(30)
# end