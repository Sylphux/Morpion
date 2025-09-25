class Game
  attr_accessor :status, :currentp

  def ask_name
    puts "Pseudo du joueur :"
    ask = gets.chomp
    return ask
  end

  def initialize
    if !(Player.all[0])
      player1 = Player.new(ask_name, "O")
      player2 = Player.new(ask_name, "X")
    end
    @turn = 0
    @status = "ongoing"
    @currentp = Player.all[rand(0..1)]
    @valid_input = false
    @act_board = Board.new
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
      if BoardCase.case(source).value == "#"
        @valid_input = true
        return
      end
    end
    puts "Wrong input."
    @valid_input = false
  end

  def test_arrays
    puts "@boardarray"
    for n in Board.get_board do
      print "#{n.valuecase} #{n.value} | "
    end
    puts "@all_case"
    for n in BoardCase.all do
      print "#{n.valuecase} #{n.value} | "
    end
  end

  def turn
    Show.show_board
    if @status != "ongoing"
      game_end
      return
    end
    change_player
    puts "\nRound #{@turn}"
    puts "\nIt's #{@currentp.name}'s turn (you are #{@currentp.value})"
    until @valid_input == true # Verifies input in good and no already done
      print "Case : "
      ask = gets.chomp.to_s.upcase
      #test_arrays
      if ask == "STOP"
        @status = "stopped"
        return
      end
      verify_input(ask)
    end
    @valid_input = false
    BoardCase.case(ask).modify_case(@currentp.value)
    @turn += 1
    if @turn == 9
      @status = "end"
    end
    if @act_board.victory?
      @status = "finished"
      game_end
    end
  end

  def new_round
    puts "New game ? (Y/n)"
    ask = gets.chomp.to_s
    if ask == "" || ask == "y"
      Application.new
    else
      puts "Goodbye !"
      exit
    end
  end

  def game_end
    puts "GAME OVER"
    if @act_board.victory?
      puts "#{@currentp.name} has won !"
    else
      puts "No one wins !"
    end
    new_round
  end

end