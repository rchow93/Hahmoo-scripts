#!/usr/bin/env ruby 
 #Hahmoo LLC - All rights reserved 
 #Author: Richard Chow 
 #creation date: Wed Nov  4 12:08:44 PST 2015

infile = File.open("text.txt","r") 

#this will display the entire contenst of the file to the stdout
=begin
while line = infile.gets
  puts line
end

infile.close #close the file when you're done working with it.


#the following code will count the number of lines in the file
line_count = 0
while line = infile.gets
  line_count += 1
end

puts "the number of lines in this file is #{line_count}"

infile.close #don't forget to always close the file when you're done using it.

#let's combine the entire contents of the file into a single long string.

infile = File.open("text.txt","r")

com_str = ""
line_count = 0

while line = infile.gets
  com_str << line
  line_count += 1
end

infile.close

puts "The combined string is #{com_str}"

puts "The total number of lines is still #{line_count}"
=end

#there is another way to count the lines and that is using the readlines method.

infile = File.readlines("text.txt")

line_count  = infile.length
puts "The total number of lines using the readlines method is #{line_count}"

#to count the number of characters

infile = File.open("text.txt","r")

char = ''

while line = infile.gets
  char << line
end

rem_whitespace = char.gsub(/\s+/, '')
puts "the total number of characters is #{char.length}"
puts "the total number of characters excluding whitespaces is #{rem_whitespace.length}"

infile.close

#word count using the scan method
infile = File.open("text.txt","r")

word_count = 0
while line = infile.gets
  word_count += line.scan(/\w+/).length
end

puts word_count
infile.close

#word count using the split method
#infile = File.open("text.txt","r")

#wordcount_array = []

#while line = infile.gets
#  wordcount_array << line.split
#end

#infile.close  

#p wordcount_array.size
#puts "using the split method - I come up with #{wordcount_array.length}"


  
