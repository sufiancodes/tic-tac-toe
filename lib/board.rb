class Board
  @@array = [1 , 2, 3, 4, 5, 6, 7, 8, 9]
  def initialize(player1_input, player2_input)
    @player1 = player1_input
    @player2 = player2_input
  end
  def checking
    
  end
  def render_view
    puts "#{@@array[0]} #{@@array[1]} #{@@array[2]}"
    puts "#{@@array[3]} #{@@array[4]} #{@@array[5]}"
    puts "#{@@array[6]} #{@@array[7]} #{@@array[8]}"
  end
end
puts board = Board.new("x", "o")
board.render_view