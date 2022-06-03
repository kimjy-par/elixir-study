defmodule Longestconsec do
  
  def longest_consec(strarr, k, max_word) when k <= 0, do: ""

  def longest_consec(strarr, k) do
    if length(strarr) < k do
      ""
    else  
      compare_length(strarr, k, "")
    end
  end  



  def compare_length([head|tail], k, max_word) when length([head|tail]) == 0, do: max_word
  def compare_length([head|tail], k, max_word) do
      candidate_word = get_word([],[head|tail],k) |> Enum.join
      if String.length(candidate_word) > String.length(max_word) do
        compare_length(tail, k, candidate_word)
      else
        compare_length(tail, k, max_word)
      end
  end
    def compare_length(string, k, max_word) do
    max_word
  end
  def get_word(result, _, k) when k <= 0, do: result
  def get_word(result, [head|tail], k) when length(tail) == 0, do: result++[head]#result
  def get_word(result, [head|tail], k) do
    [result] ++ [head] |> get_word(tail, k-1)
  end
end

strarr = ["zone", "abigail", "theta", "form", "libe", "zas"]
IO.puts Longestconsec.longest_consec(strarr, 2)

strarr2 = ["ejjjjmmtthh", "zxxuueeg", "aanlljrrrxx", "dqqqaaabbb", "oocccffuucccjjjkkkjyyyeehh"]
IO.puts Longestconsec.longest_consec(strarr2, 15)