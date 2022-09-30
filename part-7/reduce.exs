defmodule MyModule do
  def reduce([], value, _fun), do: value
  def reduce([head|tail], value, fun), do: reduce(tail, fun.(head, value), fun)
end