require "rest-client"
require "json"
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
end
