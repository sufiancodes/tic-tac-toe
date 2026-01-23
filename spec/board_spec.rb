# frozen_string_literal: true

# Board spec file to test the board class
require_relative "../lib/board"

describe Board do
  let(:board) { Board.new }
  context "Check if there is wining condition in diagonal " do
    it "return true when all are same in primary diagonal" do
      board.instance_variable_set(:@array, ["x", 2, 3, 4, "x", 6, 7, 8, "x"])
      result = board.check_diagonal
      expect(result).to be true # rubocop:disable Style/MethodCallWithArgsParentheses
    end
    it "returns true when all are same in secondary diagonal" do
      board.instance_variable_set(:@array, [1, 2, "O", 4, "O", 6, "O", 8, 9])
      result = board.check_diagonal
      expect(result).to be true # rubocop:disable Style/MethodCallWithArgsParentheses
    end
    it "return false when not same in  diagonal" do
      board.instance_variable_set(:@array, ["x", 2, 3, 4, "O", 6, 7, 8, "x"])
      result = board.check_diagonal
      expect(result).to be false # rubocop:disable Style/MethodCallWithArgsParentheses
    end
  end
end
