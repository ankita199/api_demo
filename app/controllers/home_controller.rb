class HomeController < ApplicationController
  def get_random_joke
  	begin  		
	  	user_detail_response = RestClient.get(ApplicationRecord.get_api_points[:random_user])
	  	if user_detail_response.code == 200
	  		random_joke_response = RestClient.post(ApplicationRecord.get_api_points[:random_joke],{ firstName: user_detail_response["name"] ,lastName: user_detail_response["surname"] ,limitTo: ["nerdy"]})
	  		if random_joke_response.code == 200  			
	  			response = JSON.parse(random_joke_response.body)
	  			render json: { type: response["type"],joke: response["value"]["joke"] }
	  		end	  		
	  	end
	rescue Exception => e
		render json: e.message
	end
  end
end
