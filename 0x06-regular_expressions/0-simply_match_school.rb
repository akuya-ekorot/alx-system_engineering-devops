#!/usr/bin/env ruby

# first command-line arguement
arg = ARGV[0]

# apply regex and find match
matches = arg.scan(/School/)

# print the match to the console if match was found
puts matches.join("")
