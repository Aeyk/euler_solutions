#!/usr/bin/env ruby

#n = 15
n = 1000
p (2**n).digits.reduce :+
