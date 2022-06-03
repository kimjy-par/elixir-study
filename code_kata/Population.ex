defmodule Longestconsec do
  
  def longest_consec(strarr, k) do
    test_str(strarr, k)
  end  
  def test_str([head|tail], k) do
      IO.puts head+tail[:k-1]
  end
end

strarr = ["tree", "foling", "trashy", "blue", "abcdef", "uvwxyz"]
Longestconsec.longest_consec(strarr, 2)