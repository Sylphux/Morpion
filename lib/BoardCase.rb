class BoardCase
  attr_accessor :value, :valuecase, :all_case
  #@@all_case = [] ##########DOESNT EMPTY

  def initialize(value, valuecase)
    @value = value
    @valuecase = valuecase
    #@@all_case << self
  end

=begin   def self.all BoardCase.all
    #@@all_case
  end 
=end

  def modify_case(sign)
    @value = sign
  end

  def self.case(location) # obtenir l'adresse de la case par le nom "A2"
    for n in Board.get_board #@@all_case
      if n.valuecase == location
        return n
      end
    end
  end

end