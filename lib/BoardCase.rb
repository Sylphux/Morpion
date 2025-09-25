class BoardCase
#TO DO : la classe a 2 attr_accessor, sa valeur en string (X, O, ou vide), ainsi que son identifiant de case
attr_accessor :value, :valuecase, :all_case

@@all_case

  def initialize(value, valuecase)
    #TO DO : doit régler sa valeur, ainsi que son numéro de case
    @value = value
    @valuecase = valuecase
    @all_case << self
  end

  def self.all 
    @@all_case
  end

  def self.case(location)
    @fill_board
  end

  def 
    
  end
end