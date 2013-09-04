class CreateGames < ActiveRecord::Migration
  def change
  	create_table :games do |t|
  		t.string :duration
  		t.integer :winner_id
  		t.integer :number_of_players

  		t.timestamps
  	end
  end
end
