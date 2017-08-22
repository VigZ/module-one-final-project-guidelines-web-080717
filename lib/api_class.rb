require "pry"
require "rest-client"
require "JSON"
class ApiController
	def get_api_data
		# data_array = []
		# data_array << RestClient.get(https://developers.zomato.com/api/v2.1/search?entity_id=280&entity_type=city&start=0&count=20&cuisines="#{cuisine_var}")
		# data_array << RestClient.get(https://developers.zomato.com/api/v2.1/search?entity_id=280&entity_type=city&start=21&count=20&cuisines="#{cuisine_var}")
		# data_array << RestClient.get(https://developers.zomato.com/api/v2.1/search?entity_id=280&entity_type=city&start=41&count=20&cuisines="#{cuisine_var}")
		# data_array << RestClient.get(https://developers.zomato.com/api/v2.1/search?entity_id=280&entity_type=city&start=61&count=20&cuisines="#{cuisine_var}")
		# data_array << RestClient.get(https://developers.zomato.com/api/v2.1/search?entity_id=280&entity_type=city&start=81&count=20&cuisines="#{cuisine_var}")
	end
	wanted_keys = ["name","url","address","locality","price_range","user_rating"]
	restaurant_array = RestClient.get("https://developers.zomato.com/api/v2.1/search?entity_id=280&entity_type=city&start=0&count=20&cuisines=25&apikey=6a33a0b0f8ca2cec230e87d13ef64ef3")
	test = JSON.parse(restaurant_array)["restaurants"]
	test.each do |restaurant_hash|
		restaurant_hash.keys.delete_if{|key| !wanted_keys.include?(key) }
		binding.pry
		end
end
