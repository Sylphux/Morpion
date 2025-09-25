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

end
