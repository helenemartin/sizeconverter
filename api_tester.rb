require 'net/http'
require 'uri'

puts "From which locale do you want to convert? UK/US/FR/IT/JA/AU/ALPHA"
from = gets.chomp

puts "To which locale do you want to convert? UK/US/FR/IT/JA/AU/ALPHA"
to = gets.chomp

puts "What size"
size = gets.chomp

uri = URI.parse("https://sizeconverter-nenoific.c9users.io/api/convert/#{size}/#{from}/#{to}")
request = Net::HTTP::Get.new(uri)
request.content_type = "application/json"
request["Accept"] = "application/json"

req_options = {
  use_ssl: uri.scheme == "https",
}

response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
  http.request(request)
end

puts "Converted size is: #{response.body}"
