require "pry"
require "rest-client"
require "JSON"
class ApiController
	def self.get_api_data(cuisine_id)
		data_array = []
		i = 0
		while i < 100
			data_array << get_and_truncate(i, cuisine_id)
			i += 20
		end
		data_array.flatten.shuffle

	end

	def self.get_and_truncate(start,cuisine_id)
		wanted_keys = ["name","url","address","location","price_range","user_rating"]
		restaurant_array = RestClient.get("https://developers.zomato.com/api/v2.1/search?entity_id=280&entity_type=city&start=#{start}&count=20&cuisines=#{cuisine_id}&apikey=6a33a0b0f8ca2cec230e87d13ef64ef3")
		parsed = JSON.parse(restaurant_array)["restaurants"]
		parsed.each do |restaurant_hash|
			restaurant_hash["restaurant"].delete_if{|key, value| !wanted_keys.include?(key)}
			end
	end

	def self.selection_ids
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

end
