#!/usr/bin/env ruby 
 #Hahmoo LLC - All rights reserved 
 #Author: Richard Chow 
 #creation date: Thu Nov  5 11:42:48 PST 2015

#will output the whole contents of the file to stdout
File.open("text.txt").each { |line| puts line }
puts

#to simply count the lines - just modify the script like this.
line_count = 0
File.open("text.txt").each { |line| line_count +=1 }
puts line_count 
puts

#alternate way to do this is as follows - but covering more concepts is below
infile = File.open("text.txt","r")

line_count = 0
while line = infile.gets
  line_count += 1
end
puts line_count
infile.close

  
