#!/usr/bin/env ruby 
 #Hahmoo LLC - All rights reserved 
 #Author: Richard Chow 
 #creation date: Tue Nov  3 21:18:56 PST 2015

line = "Count of Monte Cristo"
puts "string length #{line.length}"
words = line.split
puts "array size #{words.length}"

puts

infile = File.open 'input.txt','r'
i = 0

while line = infile.gets
  i +=1
end

puts "count: #{i}"
infile.close

infile = File.open 'input.txt','r'
i = 0
while line = infile.gets
  i = i + line.length
end
puts "count: #{i}"
infile.close 
