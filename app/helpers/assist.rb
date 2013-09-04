helpers do
  def add_player(player_name)
  	player_search = Player.where(name: player_name)
  	if player_search.empty?
  		player = Player.create(name: player_name)
  	else
  		player = player_search.first
  	end
  	player
  end

  def valid_names?(player_1_name, player_2_name)
  	player_1_name != "" && player_2_name != ""
  end
end