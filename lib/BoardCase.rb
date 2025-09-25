class BoardCase
#TO DO : la classe a 2 attr_accessor, sa valeur en string (X, O, ou vide), ainsi que son identifiant de case
attr_accessor :value, :valuecase, :all_case

@@all_case = []

  def initialize(value, valuecase)
    #TO DO : doit régler sa valeur, ainsi que son numéro de case
    @value = value
    @valuecase = valuecase
    @@all_case << self
  end

  def self.all 
    @@all_case
  end

  def modify_case(sign)
    @value = sign
  end

  def self.case(location) #obtenir l'adresse de la case par le nom "A2"
    for n in @@all_case
      if n.valuecase == location
        return n
      end
    end
  end


end