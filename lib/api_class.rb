class ApiController
	def get_api_data
		RestClient.get(https://developers.zomato.com/api/v2.1/search?entity_id=280&entity_type=city&start=0&count=20&cuisines="#{cuisine_var}")
	end
end
