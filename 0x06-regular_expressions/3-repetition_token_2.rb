#!/usr/bin/env ruby

# Accept command-line arguemnt
arg = ARGV[0]

# find matches
matches = arg.scan(/hbt{1,}n/)

# print matches
puts matches.join()