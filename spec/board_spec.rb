# Board spec file to test the board class
require_relative "../lib/board"

describe Board do
  let(:board) {Board.new}
  it "return true when all are same in primary diagonal" do
    board.instance_variable_set(:@array, ["x", 2, 3, 4, "x", 6, 7, 8, "x"])
    expect(board.check_diagonal).to(eq(true))
  end
end
