# frozen_string_literal: true

# Board spec file to test the board class
require_relative "../lib/board"

describe Board do
  let(:board) { Board.new }
  # test cases for check_diagonal method

  context "Check if there is wining condition in diagonal " do
    it "return's true when all are same in primary diagonal" do
      board.instance_variable_set(:@array, ["x", 2, 3, 4, "x", 6, 7, 8, "x"])
      result = board.check_diagonal
      expect(result).to be true # rubocop:disable Style/MethodCallWithArgsParentheses
    end
    it "return's true when all are same in secondary diagonal" do
      board.instance_variable_set(:@array, [1, 2, "O", 4, "O", 6, "O", 8, 9])
      result = board.check_diagonal
      expect(result).to be true # rubocop:disable Style/MethodCallWithArgsParentheses
    end
    it "return's false when not same in  diagonal" do
      board.instance_variable_set(:@array, ["x", 2, 3, 4, "O", 6, 7, 8, "x"])
      result = board.check_diagonal
      expect(result).to be false # rubocop:disable Style/MethodCallWithArgsParentheses
    end
  end
  # test cases for check_columns method
  context "Check if there is winning condition in columns" do
    it "return's true when same in 1st column" do
      board.instance_variable_set(:@array, ["x", 2, 3, "x", 5, 6, "x", 8, 9])
      result = board.check_columns
      expect(result).to be true # rubocop:disable Style/MethodCallWithArgsParentheses
    end
    it "return's true when same in 2nd column" do
      board.instance_variable_set(:@array, [1, "O", 3, 4, "O", 6, 7, "O", 9])
      result = board.check_columns
      expect(result).to be true # rubocop:disable Style/MethodCallWithArgsParentheses
    end
    it "return's true when same in 3rd column" do
      board.instance_variable_set(:@array, [1, 2, "x", 4, 5, "x", 7, 8, "x"])
      result = board.check_columns
      expect(result).to be true # rubocop:disable Style/MethodCallWithArgsParentheses
    end
    it "return's false when not same in column" do
      board.instance_variable_set(:@array, ["O", 2, 3, "X", 5, 6, 7, 8, "O"])
      result = board.check_columns
      expect(result).to be false # rubocop:disable Style/MethodCallWithArgsParentheses
    end
  end
  # test cases for check_rows
  context "Check if there is winning condition in the rows" do
    it "return's true when same in 1st column" do
      board.instance_variable_set(:@array, ["x", "x", "x", 4, 5, 6, 7, 8, 9])
      result = board.check_rows
      expect(result).to be true # rubocop:disable Style/MethodCallWithArgsParentheses
    end
    it "return's true when same in 2nd column" do
      board.instance_variable_set(:@array, [1, 2, 3, "O", "O", "O", 7, 8, 9])
      result = board.check_rows
      expect(result).to be true # rubocop:disable Style/MethodCallWithArgsParentheses
    end
    it "return's true when same in 3rd column" do
      board.instance_variable_set(:@array, [1, 2, 3, 4, 5, 6, "x", "x", "x"])
      result = board.check_rows
      expect(result).to be true # rubocop:disable Style/MethodCallWithArgsParentheses
    end
    it "return's false when not same in row" do
      board.instance_variable_set(:@array, [1, 2, 3, 4, 5, 6, "x", "O", "x"])
      result = board.check_rows
      expect(result).to be false # rubocop:disable Style/MethodCallWithArgsParentheses
    end
  end
end
