defmodule Board do
  @moduledoc """
  Represents a 'Tres en raya' game board
  """
  def initial_row do
    [" ", " ", " "]
  end

  def first_row do
    initial_row()
  end

  def second_row do
    initial_row()
  end

  def third_row do
    initial_row()
  end

  def get_board do
    # %{"1": first_row(), "2": second_row(), "3": third_row()}
    [first_row(), second_row(), third_row()]
  end

  def move(player, board, row, column) do
    new_row = Enum.at(board, row)
    edited_row = List.replace_at(new_row, column, get_player_piece(player))
    List.replace_at(board, row, edited_row)
  end

  def get_player_piece(player) do
    if player == Turn.get_p1() do
      "X"
    else
      "O"
    end
  end

  def print_board do
    Enum.map(get_board(), fn i ->
      {
        IO.inspect('#{i}')
      }
    end)
  end
end
