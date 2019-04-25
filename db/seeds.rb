require 'http'

puts ENV["API_KEY"]

def testMethod
    response = HTTP.get("https://api.themoviedb.org/3/discover/movie?primary_release_date.gte=2014-09-15&primary_release_date.lte=2014-10-22",
    :params => {:api_key => ENV["API_KEY"]} ).to_s
    byebug
end


testMethod