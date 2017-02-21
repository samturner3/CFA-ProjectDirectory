require 'forecast_io'

require 'google_maps_service'


ForecastIO.api_key = '200241aa2eca57d1b162699565137181'

# Setup API keys
@gmaps = GoogleMapsService::Client.new(key: 'AIzaSyDtMxX6mnJqcKsqyrHqTXPMCcOMTfmXqAU')
#
#
#
# ##Gmaps GeoCOde Examples####
#
# latlng = [40.714224, -73.961452]
#
# results = gmaps.geocode('1600 Amphitheatre Parkway, Mountain View, CA')
#
# # Look up an address with reverse geocoding
# results = gmaps.reverse_geocode([40.714224, -73.961452])
# #######
#
# forecast = ForecastIO.forecast(-33.8688, -151.2093)

# latlng = [40.714224, -73.961452]

def latLong(address) #input address or place, output lat and long.

  results = @gmaps.geocode(address)
  formattedAddress = results[0][:formatted_address]
  lat = results[0][:geometry][:location][:lat]
  long = results[0][:geometry][:location][:lng]

  temp = getCurrentTemp(lat, long)

  return [formattedAddress, temp]

end

def getCurrentTemp(lat, long) #input lat and long, output current temp
  # puts lat

  forecast = ForecastIO.forecast(lat, long)
  temp = forecast[:currently][:temperature].to_i
  celtemp = (5*(Float(temp) - 32))/9 #return temp in C

end


puts "Hi, please enter a place on earth and I will return the current temp"
addressInput = gets.chomp

returned = latLong(addressInput)

puts "Found: #{returned[0]}"

puts "Temp: #{'%.2f' % returned[1]}°C"
# puts returned[1].class




# puts latLong




# temp = forecast[:currently][:temperature].to_i

# puts temp.class
#
# # celtemp = (5*(Float(temp) - 32))/9
#
# puts temp
# puts celtemp
