#!/usr/bin/env ruby 
 #Hahmoo LLC - All rights reserved 
 #Author: Richard Chow

git_push = "git push -u origin master"

puts "Please enter the name of the file that you want to commit to git. Please enter . for everything"
file_commit = gets.chomp

if file_commit ="."
  `git add . `
else
  str_line = "git add #{file_commit}"
  print str_line
  system 'str_line'
end

puts
puts "Please enter a comment for the file commit"
file_comment = gets.chomp
#puts file_comment

commit_line = "git commit -m \"#{file_comment}\""
puts commit_line
system 'commit_line'

puts "You may be prompted to enter your username and password. Please have this available. "
puts git_push
exec ("#{git_push}") 
