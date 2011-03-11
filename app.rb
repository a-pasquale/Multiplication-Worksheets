require 'bundler/setup'
require 'sinatra'
require 'haml'

get '/' do
  haml :index
end

post '/multiply' do
  num_probs = params[:num_probs]
  @num_rows = num_probs.to_i / 5
  @nums = params[:nums]
  haml :multiply

end

