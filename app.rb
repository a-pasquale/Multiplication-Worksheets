require 'sinatra'

# Set up the game.
before do
end

get '/multiply' do
  haml :multiply
end

