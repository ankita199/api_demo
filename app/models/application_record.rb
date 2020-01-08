class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def self.get_api_points
  	{
  		"random_user": "http://uinames.com/api/",
  		"random_joke": "http://api.icndb.com/jokes/random"
  	}
  end
end
