defmodule MyList do
  def max([]), do: nil
  def max([head|tail]), do: calc(tail, head)
  def calc([], value), do: value
  def calc([head|tail], value) when head > value, do: calc(tail, head)
  def calc([head|tail], value), do: calc(tail, value)
end