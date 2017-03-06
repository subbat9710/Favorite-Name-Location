require 'sinatra'

get "/" do
	erb :name
end
 
post '/name' do
	name = params[:user_name]
    redirect "/location?name=" + name
end

get '/location' do
   name = params[:name]
   erb :location, :locals => {:name => name}
end

post '/location' do
	location = params[:user_location]
	name = params[:user_name]
    "Your name is #{name} and your location is #{location}."
end 