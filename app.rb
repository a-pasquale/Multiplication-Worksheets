require 'bundler/setup'
require 'sinatra'
require 'haml'

get '/' do
  haml :index
end

post '/puzzle' do
  @num_probs = 12
  lnums = params[:lnums]
  rnums = params[:rnums]
  
  @a = Array.new
  @b = Array.new
  @c = Array.new
  @d = Array.new

  @num_probs.times do
    @a << lnums[rand(lnums.size)]
    @b << rnums[rand(rnums.size)]
    @c << lnums[rand(lnums.size)]
    @d << rnums[rand(rnums.size)]
  end

  haml :puzzle
end


post '/multiply' do
  num_probs = params[:num_probs]
  @num_rows = num_probs.to_i / 5
  @lnums = params[:lnums]
  @rnums = params[:rnums]

  # do some basic sanity checking
  if !@lnums or !@rnums or num_probs.to_i > 200 then
    redirect '/'
  else
    haml :multiply
  end

end

