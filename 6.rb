#!/usr/bin/env ruby

def sum_of_squares_minus_square_of_sums n
  sum_of_squares = (1..n).map() {|x| x * x}.reduce(:+)
  square_of_sum = [(1..n).reduce(:+)].map {|x| x * x}
  square_of_sum.last - sum_of_squares
end


sum_of_squares_minus_square_of_sums 100
 
