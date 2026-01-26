# frozen_string_literal: true

require_relative "../lib/game"

describe Game do
  let(:game) { Game.new }
  context "Check winning condition" do
    it "it print to the screen You Win" do
      game.array = ["O", "O", "O", 4, 5, 6, 7, 8, 9]
      expect { game.check_wining_conditions }.to(output("You Win\n").to_stdout)
    end
    it "return's true when there is match in column" do
      game.array = ["x", 2, 3, "x", 5, 6, "x", 8, 9]
      expect(game.check_wining_conditions).to(eq(true))
    end
    it "return's true when there is match in row" do
      game.array = ["x", "x", "x", 4, 5, 6, 7, 8, 9]
      expect(game.check_wining_conditions).to(eq(true))
    end
    it "return's true when there is match in diagonal" do
      game.array = ["O", 2, 3, 4, "O", 6, 7, 8, "O"]
      expect(game.check_wining_conditions).to(eq(true))
    end
  end
end
