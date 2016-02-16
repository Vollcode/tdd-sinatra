require 'sinatra'

get '/' do
	erb :homepage
end

get '/form' do
  erb :forms
end