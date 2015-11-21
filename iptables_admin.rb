#!/usr/bin/env ruby 
 #Hahmoo LLC - All rights reserved 
 #Author: Richard Chow 
#in process - this script will set iptables rules via menu

puts "This is the Hahmoo Iptables script to simplify add/removing/viewing current iptable rules"
puts "Please enter A - To View the Current IPTABLE rules."
puts "Please enter B - To Add IPTABLE rules. "
puts "Please enter C - To Remove IPTABLE rules. "

choice = gets.downcase.chomp
puts choice

if choice == "a"
  exec ("sudo iptables -n -L -n -v")
elsif choice == "b"
  puts "this is b"
elsif choice == "c"
  puts "this is c"
else
  puts "unknown choice, please try again."
end
