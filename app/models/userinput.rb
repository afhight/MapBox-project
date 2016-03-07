class Userinput < ActiveRecord::Base
	geocoded_by :my_location
	after_validation :geocode

	def my_location
		"#{location1}"
	end


end
