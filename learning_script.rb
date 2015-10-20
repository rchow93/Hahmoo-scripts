#!/usr/bin/env ruby 
 #Hahmoo LLC - All rights reserved 
 #Author: Richard Chow 

#this is just basic test to pass variables from the command line.
=begin

first_name = ARGV[0]
last_name = ARGV[1]

puts "Hello #{first_name} #{last_name} how are you ?"

=end

puts "Please enter the name of the user. "
name = gets.chomp

puts "The name is #{name}"


