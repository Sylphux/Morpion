class Application

  def initialize #Initializes an instance of the game
    current_game = Game.new
    while current_game.status == "ongoing"
      current_game.turn
    end
    current_game.game_end
  end

end