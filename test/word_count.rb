#!/usr/bin/env ruby 
 #Hahmoo LLC - All rights reserved 
 #Author: Richard Chow 
 #creation date: Thu Nov  5 12:19:38 PST 2015

#we want to not only count the lines but collect the contents of the file for other manipulation.
text =''
line_count = 0
File.open("text.txt").each do |line|
  line_count += 1
  text << line
end

puts "#{line_count} lines"

puts "the contents of the file is #{text}" 
