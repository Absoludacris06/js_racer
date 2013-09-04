class Game < ActiveRecord::Base
	validate :two_players_per_game, on: :update
  has_and_belongs_to_many :players

  private

	def two_players_per_game
		errors.add(:number_of_players, "must be equal to two.") if self.number_of_players != 2
	end 

end
