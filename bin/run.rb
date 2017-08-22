#!/usr/bin/env ruby
require_relative "../config/environment.rb"

puts "Welcome to Restaurant Searcher! Please enter your username:"

### enter username
username = gets.chomp
if ![user class].include? username
	puts "Welcome back."
else
	puts "Username not found. Please sign up."
	username = gets.chomp
	## --> create new user instance with username
	## loop back around and have them enter their username once signed up
end

puts "What would you like to do?"
puts "- Look for new restaurants - type 'L'"
puts "- Review your restaurants- type 'R'"

answer = gets.chomp

if answer != "R" || answer != "L"
	puts "Please enter a valid answer."
end

#### if look for new restaurants

##### what info do we want to show?
## - name
## -location
## - price
## - menu sample if possible? top 3 dishes?

puts "Type 'Y' to add to your menus or 'N' to pass."
puts "Or, type X to exit."

answer = gets.chomp

if answer == "Y"
	# add menu to user's menu database
elsif answer == "N"
	# next
elsif answer == "X"
	puts "Goodbye!"
else
	puts "Please enter a valid answer."
end

### elsif look at former choices

## shall we number them?
## how many do we want to show at one time?
## should there be a limit as to how many to store?




###
