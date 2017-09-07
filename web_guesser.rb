require 'sinatra'
require 'sinatra/reloader'

number =  rand(100)


get '/' do 
    guess = params["guess"]
    erb :index, :locals => {:number =>number, :guess =>guess}
end 











#note when running sinatra from cloud 9 you need to use: ruby <lolnotrealserverfile.rb> -o $IP -p $PORT
#more info at https://gist.github.com/caseywatts/2f5f8bd2fdf583dc757a