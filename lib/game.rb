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
    loop  do
      player_one_turn
      break if check_wining_conditions == true
      player_two_turn
      break if check_wining_conditions == true
    end
  end
end

game = Game.new
game.start
game.play_game