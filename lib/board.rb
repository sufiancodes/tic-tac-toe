class Board
  @@array = [ 1 , 2, 3, 4, 5, 6, 7, 8, 9]
  def check_diagonal
    if @@array[0] == @@array[4] && @@array[4] == @@array[8] && @@array[8] == @@array[0]
      "We have winner"
    elsif @@array[2] == @@array[4] && @@array[4] == @@array[6] && @@array[6] == @@array[2] 
      "We have winner"
    end
  end
  def check_columns
    if @@array[0] == @@array[3] && @@array[3] == @@array[6] && @@array[6] == @@array[0]
      "We have winner"
    elsif @@array[1] == @@array[4] && @@array[4] == @@array[7] && @@array[7] == @@array[1]
      "We have winner"
    elsif @@array[2] == @@array[5] && @@array[5] == @@array[8] && @@array[8] == @@array[2]
      "We have winner"
    end
  end
  def check_rows
    # in this we will check how far are we in game
    if @@array[0] == @@array[1] && @@array[1] == @@array[2] && @@array[2] == @@array[0]
      "We have winner"
    elsif @@array[3] == @@array[4] && @@array[4] == @@array[5] && @@array[5] == @@array[3]
      "We have winner"
    elsif @@array[6] == @@array[7] && @@array[7] == @@array[8] && @@array[8] == @@array[6]
      "We have winner"
    end
  end
  def render_view
    puts "#{@@array[0]} #{@@array[1]} #{@@array[2]}"
    puts "#{@@array[3]} #{@@array[4]} #{@@array[5]}"
    puts "#{@@array[6]} #{@@array[7]} #{@@array[8]}"
  end
end
# if in 9 moves we don't have winner we have draw