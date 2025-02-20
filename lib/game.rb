require_relative "board"
require_relative "players"
class Game < Board
  def start
    welcome
    render_view
  end
  def player_one_turn
    puts "#{@player_one} turn"
    player_one_input = gets.chomp.to_i
    index = @@array.find_index(player_one_input)
      @@array[index] = "X"
    render_view
  end
  def player_two_turn
    puts "#{@player_two} turn"
    player_two_input = gets.chomp.to_i
    index = @@array.find_index(player_two_input)
      @@array[index] = "O"
    render_view
  end
  def check_wining_conditions
    if check_columns || check_diagonal || check_rows
      puts "You Win"
      return true
    end
  end
  def play_game
    moves = 0
    while moves < 9 && !check_wining_conditions
    player_one_turn
    moves += 1
    break if check_wining_conditions || moves == 9
    player_two_turn
    moves += 1
    break if check_wining_conditions || moves == 9
    end
    puts "Its a tie" if moves == 9
  end
end