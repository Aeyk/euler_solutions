#!/usr/bin/env ruby

def fact n
  (1..n).reduce(:*)  
end

def sum_digits n
  n.digits.reduce :+
end

sum_digits fact 100
# => 648
