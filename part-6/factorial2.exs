defmodule Factorial do
  def of(1), do: 1
  def of(n) when is_integer(n) and n>0, do: n*of(n-1)
  def of(n), do: n
end