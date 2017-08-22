class ApiController
	def get_api_data 
		data_array = []
		data_array << RestClient.get(https://developers.zomato.com/api/v2.1/search?entity_id=280&entity_type=city&start=0&count=20&cuisines="#{cuisine_var}")
		data_array << RestClient.get(https://developers.zomato.com/api/v2.1/search?entity_id=280&entity_type=city&start=21&count=20&cuisines="#{cuisine_var}")
		data_array << RestClient.get(https://developers.zomato.com/api/v2.1/search?entity_id=280&entity_type=city&start=41&count=20&cuisines="#{cuisine_var}")
		data_array << RestClient.get(https://developers.zomato.com/api/v2.1/search?entity_id=280&entity_type=city&start=61&count=20&cuisines="#{cuisine_var}")
		data_array << RestClient.get(https://developers.zomato.com/api/v2.1/search?entity_id=280&entity_type=city&start=81&count=20&cuisines="#{cuisine_var}")
	end
end
