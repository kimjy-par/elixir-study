defmodule DuplicateCount do

  def count(str) do
    string_list = str|> String.downcase |> String.split("")
    unique_list = string_list|>Enum.uniq
    count_list = for string <- unique_list, do: element_count(string_list, string) 
    count_list |> Enum.filter(&(&1>1)) |> length 
    
  end
  def element_count(list, string) do
    Enum.count(list, &(&1==string and string != ""))
  end
end