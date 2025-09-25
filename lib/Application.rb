class Application

  def perform
    # TO DO : méthode qui initialise le jeu puis contient des boucles while pour faire tourner le jeu tant que la partie n'est pas terminée.
    puts "j'aime les frites"
    puts "J'adore la bière"
    puts "J'aime les transistors"
    Game.new
  end

  def initialize
    perform
  end

end