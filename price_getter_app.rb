#!/usr/bin/env ruby 
 #Hahmoo LLC - All rights reserved 
 #Author: Richard Chow

#this is the location of the pricing file. Open this file in read-only mode.
infile = File.open '/Users/richardchow/scripts/input.txt','r'

#go through each line of the pricing file and split each section using the , as the separator
while line = infile.gets
  col = line.split(',')
  puts "#{col[2]}" #this prints out the 3rd section of the line which in this case is the price
end

#make sure to close the file when done.
infile.close 
