class Show

  def self.show_board_debile
    #TO DO : affiche sur le terminal l'objet de classe Board en entrée. S'active avec un Show.new.show_board(instance_de_Board)
    for n in Board.get_board
      puts n.valuecase
      puts n.value
      puts
    end
  end

  def self.show_board
    system "clear"
    puts "\n  A B C"
    x = 0
    y = 0
    i = 0
    chiffre = 1
    while y < 3
      print chiffre.to_s + " "
      while x < 3
        print (Board.get_board[i].value + " ")
        i += 1
        x += 1
      end
      print "\n"
      chiffre += 1
      x = 0
      y += 1
    end
    puts
  end
end