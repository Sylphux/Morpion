class BoardCase
#TO DO : la classe a 2 attr_accessor, sa valeur en string (X, O, ou vide), ainsi que son identifiant de case
attr_accessor :value, :valuecase

  def initialize(value, valuecase)
    #TO DO : doit régler sa valeur, ainsi que son numéro de case
    @value = sign
    @valuecase = valuecase
  end

  def valuecase
    
  end

end