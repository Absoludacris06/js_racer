post '/options' do
	if params[:winner] == "player_1"
	  winner_id = session[:player_1_id]
	else
		winner_id = session[:player_2_id]
	end
	duration = ((params[:duration].to_i) / 1000.0).to_s + " seconds"
	p duration
	p duration.class
	@game = Game.create(duration: duration, winner_id: winner_id, number_of_players: 2)
	# Player.find(session[:player_1_id]).games << @game
	# Player.find(session[:player_2_id]).games << @game
	erb :options
end

get '/results/:game_id' do
	@game = Game.find(params[:game_id])
	@winner = Player.find(@game.winner_id)
	erb :results
end