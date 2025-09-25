class Player
  
  #TO DO : la classe a 2 attr_reader, son nom et sa valeur (X ou O).
  attr_reader :name, :value, :players
  @@players = []

  def initialize(name, value)
    #TO DO : doit régler son nom et sa valeur
      @name = name
      @value = value
      @@players << self
  end

  def self.get_id_by_name(search) # permet d'obtenir l'adresse mémoire d'un joueur avec son nom en appelant Player.get_id_by_name("Player 1")
    for n in @@players do
      if search == @@players.n.name
        return @@players.n
      else
        return "No player with this name"
    end
  end
  
end
