defmodule Math do
  def square?(n) do
    if check_perfect_square(n) do
      "#{n} is a perfect square"
    else
      "#{n} is not a perfect square"
    end 
  end
  def check_perfect_square(n) when n<0, do: false

  def check_perfect_square(n) do 
    if :math.sqrt(n) |> get_point > 0 do
      false
    else
       true
    end
  end

  def get_point(n), do: n-trunc(n)
end