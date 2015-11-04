#!/usr/bin/env ruby 
 #Hahmoo LLC - All rights reserved 
 #Author: Richard Chow 
 #creation date: Tue Nov  3 20:47:07 PST 2015

#this testing multiple line reading

begin
  infile = File.open('input.txt','r')
  while line = infile.gets
    puts line
  end
rescue
  puts "ERROR - Please make sure the file exists."
end

puts

infile = File.open "cities.txt","r"
while line = infile.gets
  col = line.split
  puts "#{col[0]} #{col[3]}"
end
infile.close

puts

infile = File.open "cities.txt","r"
num = 1
while line = infile.gets
  print "#{num}: #{line} "
  num += 1
  puts
end
infile.close   
