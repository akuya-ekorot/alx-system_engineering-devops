#!/usr/bin/env ruby

# first command-line arguement
arg = ARGV[0]

# apply regex and find match
match = arg.match(/School/)

# print the match to the console if match was found
puts match ? match[0] : ''
