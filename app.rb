require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :linearhwhelp
  end

 post '/' do
  if params[:process]=="findrange"
	 get '/findrange' do
     erb :findrange
   end
 elsif params[:process]=="standardform"
	 get '/standardform' do
     erb :standardform
   end
 elsif params[:process]=="slopeintercept"
	 get '/slopeintercept' do
     erb :slopeintercept
   end
 end
end

post '/standardform' do
  yxvalue = params[:yorx]
  a = params[:a]
  b = params[:b]
  c = params[:c]
  if params[:yorx] == "y"
    first = b*yxvalue
    second = c - first
    @third = second/a
  elsif params[:yorx] == "x"
    first = a*yxvalue
    second = c - first
    @third = second/b
  end
  erb :standardform
end
