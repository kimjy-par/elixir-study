defmodule Bouncingball do
  def bouncing_ball(h, bounce, window) when bounce>=1, do: -1
  def bouncing_ball(h, bounce, window) when h<=window, do: 0
  def bouncing_ball(h, bounce, window) do
    check_times(h, bounce, window, 0)
  end
  def check_times(h, bounce, window, n) when window >= h, do: n-1
  def check_times(h, bounce, window, n) do
    IO.puts h*bounce
    new_h = h * bounce 
    |> check_times(bounce, window, n+2)
  end

end

IO.puts Bouncingball.bouncing_ball(3, 0.66, 1.5)