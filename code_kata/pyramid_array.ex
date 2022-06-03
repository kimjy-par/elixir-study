defmodule Kata do
  def pyramid(n) when n==0, do: []
  def pyramid(n) do
    build_pyramid([[1]],2, n)
  end
  def build_pyramid(list, n, threshold) when n>threshold, do: list 
  def build_pyramid(list, n, threshold) do
      new_list = for x <- (1..n), do: 1
      list ++ [new_list]
      |> build_pyramid(n+1, threshold)
  end
end

IO.puts Kata.pyramid(1)