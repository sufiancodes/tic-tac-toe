# frozen_string_literal: true

require_relative "../lib/game"

describe Game do
  let(:game) { Game.new }
  context "Check winning condition" do
    it "return's true when there is victory in column" do
      game.array = ["x", 2, 3, "x", 5, 6, "x", 8, 9]
      expect(game.check_wining_conditions).to(eq(true))
    end
  end
end
