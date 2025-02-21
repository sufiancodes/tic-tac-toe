# frozen_string_literal: true

require_relative "players"
class Board < Player
  # array for displaying and updating result
  @@array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  def check_diagonal
    # check if their is victory in diagonal
    return true if @@array[0] == @@array[4] && @@array[4] == @@array[8]
    return true if @@array[2] == @@array[4] && @@array[4] == @@array[6]

    false
  end

  def check_columns
    # check if their is victory in column
    return true if @@array[0] == @@array[3] && @@array[3] == @@array[6]
    return true if @@array[1] == @@array[4] && @@array[4] == @@array[7]
    return true if @@array[2] == @@array[5] && @@array[5] == @@array[8]

    false
  end

  def check_rows
    # check if their is victory in row
    return true if @@array[0] == @@array[1] && @@array[1] == @@array[2]
    return true if @@array[3] == @@array[4] && @@array[4] == @@array[5]
    return true if @@array[6] == @@array[7] && @@array[7] == @@array[8]

    false
  end

  def render_view
    # method for displaying result
    puts "#{@@array[0]} | #{@@array[1]} | #{@@array[2]}"
    puts "----------"
    puts "#{@@array[3]} | #{@@array[4]} | #{@@array[5]}"
    puts "----------"
    puts "#{@@array[6]} | #{@@array[7]} | #{@@array[8]}"
  end
end
