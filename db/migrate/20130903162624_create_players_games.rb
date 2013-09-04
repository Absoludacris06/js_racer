class CreatePlayersGames < ActiveRecord::Migration
  def change
  	create_table :players_games do |t|
  		t.belongs_to :player
  		t.belongs_to :game
  	end
  end
end
