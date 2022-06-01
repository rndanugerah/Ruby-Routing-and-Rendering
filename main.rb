require 'sinatra'
require_relative 'config'

get '/' do 
  erb :login
end

post '/' do
  if params['username'] == 'admin' && params['password'] == 'admin'
    redirect '/food'
  else
    redirect '/'
  end
end

get "/food" do
  erb :foods_form
end

post "/food" do
  @name = params[:name]
  @category = params[:category]
  @price = params[:price]
  erb :summary_foods
end
