class BoardCase
#TO DO : la classe a 2 attr_accessor, sa valeur en string (X, O, ou vide), ainsi que son identifiant de case
attr_accessor :value, :valuecase

  def initialize(value, valuecase)
    #TO DO : doit régler sa valeur, ainsi que son numéro de case
    @value = value
    @valuecase = valuecase
  end

  #rien à rajouter dans cette classe.
  #Les valuecases seront modifiées par d'autres classes

end