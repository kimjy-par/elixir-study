values=[1,2,3]
result = with count = Enum.count(values),
              sum   = Enum.sum(values)
         do
           sum/count
         end

IO.puts(result)
