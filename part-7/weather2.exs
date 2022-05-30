defmodule WeatherHistory do
    def for_location([], _target_loc), do: []
#    def for_location([[time, target_loc, temp, rain] | tail], target_loc) do
#        [[time, target_loc, temp, rain] | for_location(tail, target_loc)]
#    end
    def for_location([ head =[_, target_loc, _, _] | tail ], target_loc) do
        [head | for_location(tail, target_loc)]
    end
    def for_location([_ | tail], target_loc), do: for_location(tail, target_loc)

    def test_data do
        [
            [13662, 26, 14, 1],
            [13662, 26, 14, 1],
            [13662, 26, 14, 1],
            [13662, 26, 14, 1],
            [13662, 26, 14, 1],
            [13662, 27, 14, 1],
            [13662, 26, 14, 1],
            [13662, 27, 14, 1],
            [13662, 26, 14, 1],
            [13662, 27, 14, 1],
            [13662, 26, 14, 1],
            [13662, 27, 14, 1]
        ]
    end
end