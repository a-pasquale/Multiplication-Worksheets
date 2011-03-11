require 'sinatra'
require 'haml'

get '/multiply' do
  haml :multiply
end

