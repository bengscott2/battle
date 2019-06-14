require 'sinatra/base'
require_relative 'player.rb'
require_relative 'game.rb'


class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player1 = Player.new(params["player_1_name"])
    $player2 = Player.new(params["player_2_name"])
    redirect :play
  end

  post '/attack' do
    session[:attack] = "HIT!"
    Game.new.attack($player2)
    redirect :play
  end

  get '/play' do
    @player_1 =$player1
    @player_2 = $player2
    @attack = session[:attack]
    erb :play
  end
  run! if app_file == $0
end
