defmodule Params do
  def func(p1, p2 \\ 123)
  def func(p1, p2) when is_list(p1), do: "You said #{p2} with a list"
  def func(p1, 99), do: "input arguments are #{p1} and 99"
  def func(p1, p2), do: "You passed in #{p1} and #{p2}"
end