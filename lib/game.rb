require_relative "board"
require_relative "player"
class Game < Board
  def start
    puts "Welcome let the game begin"
    render_view
  end
end

game = Game.new
game.start