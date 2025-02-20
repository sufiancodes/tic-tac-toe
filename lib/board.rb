class Board
  @@array = [ 1 , 2, 3, 4, 5, 6, 7, 8, 9]
  def initialize(player1_input, player2_input)
    @player1 = player1_input
    @player2 = player2_input
  end
  def playing
    # in this method we will iterate over array and change views this is what will allow the playing of game
  end
  def check_diagonal
    if @@array[0] == @@array[4] && @@array[4] == @@array[8] && @@array[8] == @@array[0]
      puts "We have a Winner"
    elsif @@array[2] == @@array[4] && @@array[4] == @@array[6] && @@array[6] == @@array[2] 
      puts "we have a Winner"
    end
  end
  def check_columns
    if @@array[0] == @@array[3] && @@array[3] == @@array[6] && @@array[6] == @@array[0]
      puts "We have Winner"
    elsif @@array[1] == @@array[4] && @@array[4] == @@array[7] && @@array[7] == @@array[1]
      puts "We have Winner"
    elsif @@array[2] == @@array[5] && @@array[5] == @@array[8] && @@array[8] == @@array[2]
      puts "We have Winner"
    end
  end
  def check_rows
    # in this we will check how far are we in game
    if @@array[0] == @@array[1] && @@array[1] == @@array[2] && @@array[2] == @@array[0]
      puts "We have winner"
    elsif @@array[3] == @@array[4] && @@array[4] == @@array[5] && @@array[5] == @@array[3]
      puts "We have winner"
    elsif @@array[6] == @@array[7] && @@array[7] == @@array[8] && @@array[8] == @@array[6]
      puts "we have Winner"
    end
  end
  def render_view
    puts "#{@@array[0]} #{@@array[1]} #{@@array[2]}"
    puts "#{@@array[3]} #{@@array[4]} #{@@array[5]}"
    puts "#{@@array[6]} #{@@array[7]} #{@@array[8]}"
  end
end
puts board = Board.new("x", "o")
board.render_view
board.check_columns
board.check_rows
board.check_diagonal