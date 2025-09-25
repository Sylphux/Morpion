class BoardCase
  attr_accessor :value, :valuecase, :all_case

  def initialize(value, valuecase)
    @value = value
    @valuecase = valuecase
  end

  def modify_case(sign)
    @value = sign
  end

  def self.case(location) # get instance by name (like A1)
    for n in Board.get_board
      if n.valuecase == location
        return n
      end
    end
  end

end