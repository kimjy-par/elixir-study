defmodule Chop do
    def guess(actual) do
        IO.puts "GUESS!! #{actual}"
    end
    def guess(actual, range) do
        first..last = range
        half = div((first+last),2)

        IO.puts "Is It #{half}"

        if half > actual do
            guess(actual, first..half)
        end
        if half < actual do
            guess(actual, half..last)
        end
        if half == actual do
            guess(actual)
        end
        
    end
end

Chop.guess(273, 1..1000)