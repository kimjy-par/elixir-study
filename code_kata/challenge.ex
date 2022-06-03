defmodule Challenge do
  def solution(number), do: Enum.reduce((1..number-1), 0, &(selected_sum(&1)+&2))
  def selected_sum(x) when rem(x,3) == 0, do: x
  def selected_sum(x) when rem(x,5) == 0, do: x
  def selected_sum(x), do: 0 
end