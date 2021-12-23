defmodule TresEnRaya do
  @moduledoc """
  Documentation for `TresEnRaya`.
  """

  def main(_args) do
    IO.puts("Welcome to Tres en raya game")
    start_game()
  end

  @doc """
  Hello world.

  ## Examples

      iex> TresEnRaya.start_game()
      :ok

  """
  def start_game do
    player = Turn.get_next_turn()
    {row, _} = IO.gets('#{player} row: ') |> Integer.parse()
    {column, _} = IO.gets('#{player} column: ') |> Integer.parse()
    board = Board.get_board()

    Board.move(player, board, row, column)
    |> IO.inspect()
  end
end
