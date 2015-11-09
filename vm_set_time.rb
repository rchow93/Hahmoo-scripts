#!/usr/bin/env ruby 
 #Hahmoo LLC - All rights reserved 
 #Author: Richard Chow 
 #creation date: Mon Nov  9 13:57:42 PST 2015

date = `date`
puts "The current date is #{date}"
`date ; sudo service ntp stop ; sudo ntpdate -s time.nist.gov ; sudo service ntp start ; date`
puts "Restarting the ntp service and syncing the current date with sudo ntpdate -s time.nist.gov"
updated_date = `date`
puts "Current date and time after update is now #{updated_date}" 
