defmodule MyList do
  def span(from, to), do: calc(from+1, to, [from])
  def calc(from, to, [head|tail]) when from>to, do: [head|tail]
  def calc(from, to, [head|tail]), do: calc(from+1, to, [head|tail]++[from])
end