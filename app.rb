require 'sinatra/base'

class App < Sinatra::Base
  set :root, "#{settings.root}/."

  get '/' do
    erb :'super_hero'
  end

  post '/teams' do
    @team = params[:team]
    erb :'team'
  end
end
