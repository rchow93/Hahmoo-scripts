#!/usr/bin/env ruby 
 #Hahmoo LLC - All rights reserved 
 #Author: Richard Chow 
 #creation date: Thu Nov  5 12:23:25 PST 2015

#this is an alternate way to count lines and also feed the contents of a file into a variable. 

lines = File.readlines("text.txt")
line_count = lines.size
text = lines.join

puts "The number of lines is #{line_count} lines"
puts

puts "To count the number of characters. "
total_characters = text.length
puts "The total number of characters is #{total_characters}"

#we want to count the characters but also exclude whitespaces.
#to remove the whitespaces use the gsub command
characters_without_whitespaces = text.gsub(/\s+/,'').length
puts "total number of characters without whitespaces #{characters_without_whitespaces}"

#to count the number of words - can use either scan or split methods

total_words = text.scan(/\w+/).length
total_words_split = text.split.length
puts "the total number of words using the scan method is #{total_words}"
puts "the total number of words using the split methodis #{total_words_split}"

#to count the number of sentences - we would split based on sentence ending.
total_number_sentences = text.split(/\.|\?|!/).length
puts "The number of sentences is #{total_number_sentences}"

#to calculate the number of paragraphs - utilize the fact that /n/n represents one paragraph to count
total_number_paragraphs = text.split(/\n\n/).length
puts "The number of paragraphs is #{total_number_paragraphs}"

#to calculate average number of words per sentence and sentences per paragraph

puts "the average number of words per sentence is #{total_words_split/total_number_sentences}"
puts "the average number of sentences per paragraph is #{total_number_sentences/total_number_paragraphs}"

#to remove a list of words from being counted - filler words 
stopwords = %w{the a by on for of are with just but and to the my I has some in} #built an array

words = text.scan(/\w+/)
keywords = words.select { |word| !stopwords.include?(word) }
nonstop_words = ((keywords.length.to_f / words.length.to_f) * 100).to_i
puts "The percentage of non-stop words used is #{nonstop_words}%"






