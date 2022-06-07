defmodule Solution do
  def nb_year(p0, percent, aug, p) do
      calc_year(p0, percent, aug, p, 0) 
  end
  def calc_year(p0, percent, aug, p, n_year) when p0 >= p, do: n_year
  def calc_year(p0, percent, aug, p, n_year) do
      trunc(p0 + p0*percent*0.01 + aug)
      |> calc_year(percent, aug, p, n_year + 1)
  end 
end