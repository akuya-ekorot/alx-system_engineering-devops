#!/usr/bin/env ruby

arg = ARGV[0]

sender = arg.scan(/from:\+?[0-9a-zA-Z]{1,}/).join().scan(/(?<=from:).+/)
receiver = arg.scan(/to:\+?[0-9a-zA-Z]{1,}/).join().scan(/(?<=to:).+/)
flags = arg.scan(/flags:[-01:]{1,}/).join().scan(/(?<=flags:).+/)

puts [sender, receiver, flags].join(",")

