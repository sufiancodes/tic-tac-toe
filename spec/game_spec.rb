# frozen_string_literal: true

require_relative "../lib/game"

describe Game do
  let(:game) { Game.new }
  context "Check winning condition" do
    it "it print to the screen You Win" do
      game.array = ["O", "O", "O", 4, 5, 6, 7, 8, 9]
      expect(game).to(receive(:puts).with("You Win"))
      game.check_wining_conditions
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
  context "Checking Player one turn method" do
    it "it prompt player one user for their turn" do
      game.player_one = "Alex"
      expect(game).to(receive(:puts).with("Alex turn"))
      game.player_one_turn
    end
  end
end
