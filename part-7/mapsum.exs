defmodule MyList do
  
  def mapsum([], _func), do: 0
  def mapsum([head|tail], func), do: reduce([head|tail], 0, func)
  def reduce([], value, _func), do: value
  def reduce([head|tail], value, func), do: reduce(tail, value+func.(head), func)
end 