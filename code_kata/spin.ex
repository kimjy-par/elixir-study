defmodule Spin do
  def spin_words(message) do
    String.split(message, " ") |> reverse_word([]) |> Enum.join(" ")
  end

  def reverse_word([], results), do: results
  def reverse_word([head|tail], results) do
    if String.length(head) >= 5 do
        result = [String.reverse(head)]
        reverse_word(tail, results++result)
    else
        result = [head]
        reverse_word(tail, results++result) 
    end 
  end
end

test_str = "Welcome is reversed"
IO.puts Spin.spin_words(test_str)