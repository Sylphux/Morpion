class Board
  attr_accessor :boardarray
  @@boardarray = []

  def fill_board
    bapos = 0 #index to fill board array
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

  def self.get_board #Allows to take the board from somewhere else
    @@boardarray
  end

  def initialize
    puts "Initializing Board"
    @tab = Array.new(3) { Array.new(3)}
    fill_board #fills board with "#"
  end

  def verify_tree_signs(source) #verifies that the three signs received match
    if source == "XXX" || source == "OOO"
      return true
    end
  end

  def victory?
    u = 0 #checks lines
    3.times do
      if verify_tree_signs(@@boardarray[u + 0].value + @@boardarray[u + 1].value + @@boardarray[u + 2].value)
        return true
      end
      u += 3
    end
    u = 0 #checks rows
    3.times do
      if verify_tree_signs(@@boardarray[u + 0].value + @@boardarray[u + 3].value + @@boardarray[u + 6].value)
        return true
      end
      u += 1
    end
    u = 0 #checks diag
    2.times do
      if verify_tree_signs(@@boardarray[0 + u].value + @@boardarray[4].value + @@boardarray[8 - u].value)
        return true
      end
      u += 2
    end
    return false
  end

end