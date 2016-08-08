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

get "/camelize/:user_string" do
  content_type( :json )
  string_to_camelize = WordFormatter.new( params[:user_string] )
  camelized_string = string_to_camelize.make_camelcase
  return camelized_string.to_json
end