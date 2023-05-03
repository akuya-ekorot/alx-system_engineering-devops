#!/usr/bin/env ruby

# accept command-line argument
arg = ARGV[0]

# match
matches = arg.scan(/h.n/)

# print matches
puts matches.join
