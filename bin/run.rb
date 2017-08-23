#!/usr/bin/env ruby
require_relative "../config/environment.rb"
require_relative "../lib/command_line_interface.rb"

puts "Welcome to Restaurant Searcher!"

### enter username
find_or_create_user

puts "What would you like to do?"
puts "- Look for new restaurants - type 'L'"
puts "- Review your restaurants- type 'R'"


if answer != "R" || answer != "L"
	puts "Please enter a valid answer."
elsif answer == "R"
	choose_a_cuisine
	get_restaurant_card(restaurant_array)
elsif answer == "L"
	##### i'm dying i'll do this tomorrow!!!
end

