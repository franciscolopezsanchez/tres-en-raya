defmodule BoardTest do
  use ExUnit.Case

  test "get_board" do
    assert Board.get_board() == [[" ", " ", " "], [" ", " ", " "], [" ", " ", " "]]
  end

  describe "when is player 1" do
    test "get_player_piece/1 returns X" do
      assert Board.get_player_piece(Turn.get_p1()) == "X"
    end
  end

  describe "when is player 2" do
    test "get_player_piece/1 returns O" do
      assert Board.get_player_piece(Turn.get_p2()) == "O"
    end
  end
end
