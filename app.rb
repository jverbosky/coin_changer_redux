require 'sinatra'
require 'sinatra/reloader' if development?  # automatically reload app.rb on save via sinatra-contrib gem
require_relative 'coin_changer_r.rb'

class CoinChangerReduxApp < Sinatra::Base

  get '/' do
    erb :start
  end

  post '/amount' do
    input = params[:number]
    change = make_change(input)
    "#{change}"
  end

end
