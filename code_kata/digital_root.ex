defmodule Kata do
    def square_digits(n) do
        square_list = for x <- Integer.to_string(n) |> String.split(""), do: square_from_string(x)
        square_list |> Enum.join |> String.to_integer
    end
    def square_from_string(string) do
        if String.length(string) > 0 do
            String.to_integer(string) * String.to_integer(string)
            |> Integer.to_string
        else
            ""
        end
    end
end