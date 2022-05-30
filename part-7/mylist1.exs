defmodule MyList do
    def square([]), do: []
    def square([head | tail]), do: [head*head | square(tail)]

    def add_1([]), do: []
    def add_1([ head | tail ]), do: [head+1 | add_1(tail)]

    def map([], _func), do: []
    def map([head | tail], func), do: [ func.(head) | map(tail, func) ]

    def reduce([], value, _) do
        value
    end

    def reduce([head|tail], value, func) do
        reduce(tail, func.(head, value), func)
    end

    def mapsum([head|tail], func) do
        map([head|tail], func) |> reduce(0, &(&1+&2))
    end
    
    def maxval(left, right) do
        if left > right do
            left
        else
            right
        end
    end

    def max([head|tail]) do
        reduce([head|tail], -99, &MyList.maxval/2)
    end
    
    def get_character(value) when value > 122 do 
        get_character(rem(value, 123)+97)
    end

    def get_character(value) do
        value
    end

    def ascii_add(value, n) do
        value+n |> get_character
    end

    def caesar([head|tail], n) do
        map([head|tail], &MyList.ascii_add(&1,n))
    end
end