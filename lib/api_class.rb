require "pry"
require "rest-client"
require "JSON"
class ApiController
	def get_api_data
		data_array = []
		i = 0
		while i < 100
			data_array << get_and_truncate(i)
			i += 20
		end
		data_array.flatten

	end

	def get_and_truncate(arg)
		wanted_keys = ["name","url","address","location","price_range","user_rating"]
		restaurant_array = RestClient.get("https://developers.zomato.com/api/v2.1/search?entity_id=280&entity_type=city&start=#{arg}&count=20&cuisines=25&apikey=6a33a0b0f8ca2cec230e87d13ef64ef3")
		parsed = JSON.parse(restaurant_array)["restaurants"]
		parsed.each do |restaurant_hash|
			restaurant_hash["restaurant"].delete_if{|key, value| !wanted_keys.include?(key)}
			end
	end

end

lol = ApiController.new
array = lol.get_api_data
binding.pry
"hi"
