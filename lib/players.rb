# frozen_string_literal: true

class Player
  def welcome
    # To welcome player and keep track of their names
    puts "let the game begin who's 1st player"
    @player_one = gets.chomp
    puts "Now who's 2nd player"
    @player_two = gets.chomp
    puts "The player one is #{@player_one} and he shall go with X"
    puts "The player two is #{@player_two} and he shall go with O"
  end
end
