require_relative "players"
class Board < Player
  @@array = [ 1 , 2, 3, 4, 5, 6, 7, 8, 9]
  def check_diagonal
    return true if @@array[0] == @@array[4] && @@array[4] == @@array[8]
    return true if @@array[2] == @@array[4] && @@array[4] == @@array[6]
    false  # No winner
  end
  def check_columns
    return true if @@array[0] == @@array[3] && @@array[3] == @@array[6]
    return true if @@array[1] == @@array[4] && @@array[4] == @@array[7]
    return true if @@array[2] == @@array[5] && @@array[5] == @@array[8]
    return false  # No winner, return false
  end
  def check_rows
    return true if @@array[0] == @@array[1] && @@array[1] == @@array[2]
    return true if @@array[3] == @@array[4] && @@array[4] == @@array[5]
    return true if @@array[6] == @@array[7] && @@array[7] == @@array[8]
    false  # If no condition matched, return false
  end
  def render_view
    puts "#{@@array[0]} #{@@array[1]} #{@@array[2]}"
    puts "#{@@array[3]} #{@@array[4]} #{@@array[5]}"
    puts "#{@@array[6]} #{@@array[7]} #{@@array[8]}"
  end
end
# if in 9 moves we don't have winner we have draw