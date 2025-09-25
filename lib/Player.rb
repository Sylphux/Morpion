class Player
  
  attr_reader :name, :value, :players
  @@players = []

  def initialize(name, value)
      @name = name
      @value = value
      @@players << self
  end

  def self.all
    @@players
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

end
