#!/usr/bin/env ruby 
 #Hahmoo LLC - All rights reserved 
 #Author: Richard Chow 

#this is just basic test to pass variables from the command line.
=begin

first_name = ARGV[0]
last_name = ARGV[1]

puts "Hello #{first_name} #{last_name} how are you ?"


#this code prompts the user to enter a name and then replies with that name.
puts "Please enter the name of the user. "
name = gets.chomp

puts "The name is #{name}"

=end

#this is an example to open a file then display the contents of that file.
infile = File.open('input.txt','r') #opens the input.txt file in read-only mode
myword = infile.gets
puts myword #output the contents of that file

infile.close #always make sure to close the file when you're done modifying it.

#to write to a file
outfile = File.open('output.txt','w') #writes to a file named output.txt
todays_date = `date` #make variable and set with todays date
outfile.puts todays_date #write todays date to the file
outfile.close #remember to close the file 
