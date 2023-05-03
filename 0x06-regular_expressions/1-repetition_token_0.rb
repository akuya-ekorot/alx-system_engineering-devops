#!/usr/bin/env ruby

# Accept command-line arguemnt
arg = ARGV[0]

# find matches
matches = arg.scan(/hbt{2,5}n/)

# print matches
puts matches.join("")