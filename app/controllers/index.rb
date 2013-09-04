enable :sessions

before '/' do
	session.clear
end

get '/' do
  erb :index
end

before '/game' do
  unless valid_names?(params[:player_1], params[:player_2])
    redirect to('/')
  end
end

post '/game' do
  if session[:player_1_id]
    @player_1 = Player.find(session[:player_1_id])
    @player_2 = Player.find(session[:player_2_id])
  else
    @player_1 = add_player(params[:player_1])
    session[:player_1_id] = @player_1.id
    @player_2 = add_player(params[:player_2])
    session[:player_2_id] = @player_2.id
  end
  erb :game
end
