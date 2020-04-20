#!/usr/bin/env ruby

def fibo n = 2, solved = [1, 1]
  until solved.length >= n
    curr = solved[solved.length - 1]
    prev = solved[solved.length - 2]
    acc = [curr, prev]          
            .reduce :+
    solved << acc
  end
  solved
end
thousand_fibos = fibo(1000)

even_fibos_under_four_million = thousand_fibos.filter do |i|
  i <= 4_000_000 and i % 2 == 0
end

even_fibos_under_four_million.reduce :+
# => 4613732
