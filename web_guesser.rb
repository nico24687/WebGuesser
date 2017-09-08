require 'sinatra'
require 'sinatra/reloader'

SECRET_NUMBER =  rand(100)

def check_guess(guess)
    if guess.to_i - SECRET_NUMBER > 5
            "Way too high"
           elsif guess.to_i == SECRET_NUMBER
               "You got it right"
               "The secret number is #{SECRET_NUMBER}"
           elsif guess.to_i > SECRET_NUMBER
               "Too high"
            elsif SECRET_NUMBER-guess.to_i > 5
                "Way too low"
           else 
               "Too low"
           end
end



get '/' do 
    guess = params["guess"]
    message = check_guess(guess)
    erb :index, :locals => { :guess =>guess, :message => message}
end 











#note when running sinatra from cloud 9 you need to use: ruby <lolnotrealserverfile.rb> -o $IP -p $PORT
#more info at https://gist.github.com/caseywatts/2f5f8bd2fdf583dc757a