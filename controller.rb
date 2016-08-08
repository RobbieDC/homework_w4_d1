require( "sinatra" )
require( "sinatra/contrib/all" )
require( "json" )

require_relative( "./models/word_formatter" )

get "/" do
  erb( :home )
end

get "/address" do
  content_type( :json )
  user_postcode = WordFormatter.new("iv2 3nn")
  address = {
    address: "17 Crown Drive",
    buuilding: "Roodlands",
    postcode: user_postcode.make_upcase(),
    phone: "01463 241 546"
  }
  return address.to_json()
end