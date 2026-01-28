# frozen_string_literal: true

require_relative "lib/board"
require_relative "lib/game"
require_relative "lib/players"

game = Game.new
game.start
game.play_game
puts "You are Win" if game.check_wining_conditions == true
