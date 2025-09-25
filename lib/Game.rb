class Game
  #TO DO : la classe a plusieurs attr_accessor: le current_player (égal à un objet Player), le status (en cours, nul ou un objet Player s'il gagne), le Board et un array contenant les 2 joueurs.
  attr_accessor :status

  def initialize
    #TO DO : créé 2 joueurs, créé un board, met le status à "on going", défini un current_player
    player1 = Player.new("Player 1", "O")
    player2 = Player.new("Player 2", "X")
    @status = "ongoing"
    @currentp = Player.all[rand(0..1)]
    @valid_input = false
    Board.new
    turn
  end

  def change_player
    if @currentp == Player.all[0]
      @currentp = Player.all[1]
    else
      @currentp = Player.all[0]
    end
  end

  def verify_input(source)
    if source.match?(/[A-C]/) && source.match?(/[1-3]/)
      @valid_input = true
      return
    else
      puts "Wrong input."
    end
    @valid_input = false
  end

  def turn
    #TO DO : méthode faisant appelle aux méthodes des autres classes (notamment à l'instance de Board). Elle affiche le plateau, demande au joueur ce qu'il joue, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie.
    Show.show_board
    if @status != "ongoing"
      game_end
      return
    end
    change_player
    puts "\nIt's #{@currentp.name}'s turn (you are #{@currentp.value})"
    until @valid_input == true
      print "Case : "
      ask = gets.chomp.to_s.upcase
      verify_input(ask)
    end
    @valid_input = false
    BoardCase.case(ask).modify_case(@currentp.value)
  end

  def new_round
    # TO DO : relance une partie en initialisant un nouveau board mais en gardant les mêmes joueurs.
  end

  def game_end
    # TO DO : permet l'affichage de fin de partie quand un vainqueur est détecté ou si il y a match nul
  end    

end