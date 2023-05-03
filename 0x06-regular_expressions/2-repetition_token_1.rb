#!/usr/bin/env ruby

# Accept command-line arguemnt
arg = ARGV[0]

# find matches
matches = arg.scan(/hb{0,1}tn/)

# print matches
puts matches.join("")