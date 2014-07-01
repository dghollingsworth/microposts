task :request=>:environment do 
		require 'net/http'
		uri = URI.parse("http://ticketmaster.productserve.com/v3/event?apiKey=01b03275772bd1559c511b6295e74d58&country=CA&filter.event.parentCategoryId=Music")
		artists = []
		venues = []
		events = {}
		events_array = []
		Net::HTTP.start(uri.host, uri.port) do |http|
  		request = Net::HTTP::Get.new uri
			response = http.request request # Net::HTTPResponse object
  		
  	# 	JSON.parse(response.body).each do |key, val|
  	# 		if key=="results"
  	# 			val.each do |item|
  	# 				item.each do |sub_key, sub_val|
  	# 					if sub_key=="artists"
  	# 						artists<<sub_val 
  	# 					elsif sub_key=="venue"
  	# 						venues<<sub_val
  	# 					else
  	# 						events[sub_key]=sub_val
  	# 					end
  	# 				end
  	# 			end
  	# 		end	
  			
			# end

			JSON.parse(response.body)["results"].each do |event| 
				events_array<<event
			end
  	
  	end#net::http.start
  	puts events_array
	end#task