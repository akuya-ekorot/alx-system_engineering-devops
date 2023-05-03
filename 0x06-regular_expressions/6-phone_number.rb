#!/usr/bin/env ruby

# command-line arguement
arg = ARGV[0]

# get matches
matches = arg.scan(/[0-9]{10}/)

# print matches
puts matches.join
