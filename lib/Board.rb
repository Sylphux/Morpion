class Board
#TO DO : la classe a 1 attr_accessor : un array/hash qui contient les BoardCases.
#Optionnellement on peut aussi lui rajouter un autre sous le nom @count_turn pour compter le nombre de coups joué
attr_accessor :boardarray
@@boardarray = []

  def fill_board
    bapos = 0 #index pour remplir boardarray de toutes les instances de cases
    chiffre = 1
    lettre = 65
    while lettre != 68
      while chiffre < 4
        @@boardarray[bapos] = BoardCase.new("#", "#{lettre.chr}#{chiffre}")
        bapos += 1
        chiffre += 1
      end
      chiffre = 1
      lettre += 1
    end
  end

  def self.get_board #permet de récupérer le tableau ailleurs
    @@boardarray
  end

  def initialize
    #TO DO :
    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    #Ces instances sont rangées dans un array/hash qui est l'attr_accessor de la classe
    puts "Initializing Board"
    fill_board #on lance la fonction qui remplit les cases de "#"
  end

  def play_turn
    #TO DO : une méthode qui :
    #1) demande au bon joueur ce qu'il souhaite faire
    #2) change la BoardCase jouée en fonction de la valeur du joueur (X ou O)
  end

  def victory?
    #TO DO : une méthode qui vérifie le plateau et indique s'il y a un vainqueur ou match nul
  end

end