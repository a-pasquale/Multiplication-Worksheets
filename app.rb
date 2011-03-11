require 'bundler/setup'
require 'sinatra'
require 'haml'

get '/' do
  haml :multiply
end

