#!/usr/bin/env ruby 
 #Hahmoo LLC - All rights reserved 
 #Author: Richard Chow 
 #creation date: Thu Nov 12 17:33:06 PST 2015

#this is a text finder similar to grep.

puts "Please enter the string that you would like to find"
text_to_find = gets.chomp

puts "Please enter the file that you would like to search for the string - enter full path"
file_to_search = gets.chomp


line_execute = "ruby -ne 'puts $_ if $_ =~ /#{text_to_find}/' #{file_to_search}"
#puts line_execute

puts `#{line_execute}`

