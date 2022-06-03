defmodule RemoveDuplicateWordsKata do

  def removeDuplicateWords(text) do
    text |> String.split(" ") |> Enum.uniq |> Enum.join(" ")
    end
  end

end

IO.puts RemoveDuplicateWordsKata.removeDuplicateWords("my cat is my cat fat")