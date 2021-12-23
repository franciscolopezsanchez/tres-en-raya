defmodule Turn do
  @p1 "p1"
  @p2 "p2"
  @initial_turn @p1

  def get_p1 do
    @p1
  end

  def get_p2 do
    @p2
  end

  def get_next_turn do
    @initial_turn
  end

  def get_next_turn(player) do
    if player == @p1 do
      @p2
    else
      @p1
    end
  end
end
