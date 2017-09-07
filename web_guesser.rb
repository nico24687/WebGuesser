require 'sinatra'
require 'sinatra/reloader'

get '/' do 
    secret_number = rand(100)
    "The secret number is #{secret_number}"
end 











#note when running sinatra from cloud 9 you need to use: ruby <lolnotrealserverfile.rb> -o $IP -p $PORT
#more info at https://gist.github.com/caseywatts/2f5f8bd2fdf583dc757a