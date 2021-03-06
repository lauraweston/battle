require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player1] = params[:player1]
    session[:player2] = params[:player2]
    redirect to('/play')
  end

  get '/play' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    @player1_hp = 100
    @player2_hp = 100
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
