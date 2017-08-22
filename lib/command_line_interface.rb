require "pry"
require_relative "apicontroller.rb"
def get_user_input
  gets.chomp.downcase
end

def selection_ids
  cuisine_hash = {
    "american" => 1,
    "chinese" => 25,
    "barbecue" => 193,
    "breakfast" => 182,
    "cafe" => 30,
    "cajun" => 491,
    "deli" => 192,
    "desserts" => 100,
    "fast food" => 40,
    "french" => 45,
    "greek" => 156,
    "indian" => 148,
    "italian" => 55,
    "japanese" => 60,
    "korean" => 67,
    "mexican" =>73,
    "pizza" => 82,
    "puerto rican" => 361,
    "sushi" => 177,
    "steak" => 141,
    "thai" => 95,
    "vietnamese" =>99
  }
end

def choose_a_cuisine
  puts "Please enter a type of cuisine you would like to search for."
  cuisine = get_user_input
  if selection_ids.keys.include?(cuisine)
    ApiController.get_api_data(selection_ids[cuisine])
  else
    puts "Sorry, that cuisine is not in our databse."
  end
end

def get_restaurant_card(restaurant_array)
  restaurant_array.shift
end

# def display_to_user(restaurant_card)
#   puts "How does this place look?"
#   restaurant_array.each do |restaurant_hash|
#     puts "#{restaurant_hash}"
#     if get_user_input == "y"
#
#     elsif get_user_input == "n"
#       puts "also working"
#     else
#       puts "Please enter a valid command"
#     end
#   end
# end

def
