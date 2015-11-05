#!/usr/bin/env ruby 
 #Hahmoo LLC - All rights reserved 
 #Author: Richard Chow


git_push = "git push -u origin master"

puts "Please enter the name of the file that you want to commit to git. Please enter . for everything"
file_commit = gets.chomp

if file_commit == "."
  `git add --all`
else
  str_line = "git add #{file_commit}"
  print str_line
  `#{str_line}`
end

puts
puts "Please enter a comment for the file commit"
file_comment = gets.chomp
puts file_comment

commit_line = "git commit -m \"#{file_comment}\""
`#{commit_line}`
#puts "hello world"
#system ( commit_line )
#`git commit -m "test"`


  puts "Which git repository would you like to commit this to? :"
  puts "1: Hahmoo Learning Scripts "
  puts "2: Hahmoo Production Scripts "
  puts "3: Hahmoo Chef Scripts "
  choice = gets.chomp


if choice == "1"
  `git remote add origin https://github.com/rchow93/hahmoo-learning-scripts.git`
elsif choice == "2"
  `git remote add origin https://github.com/rchow93/Hahmoo-scripts.git`
else choice == "3"
  `git remote add origin https://github.com/Hahmoo/chef-repo`
#else
  puts "the choice was not recognized, please enter another choice."
#   retry
end


puts "You may be prompted to enter your username and password. Please have this available. "
puts git_push
exec ("#{git_push}") 
