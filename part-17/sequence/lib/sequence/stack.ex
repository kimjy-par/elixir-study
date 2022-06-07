defmodule Stack.Server do
    use GenServer

    def init(initial_list) do
        { :ok, initial_list }
    end

    def handle_call(:pop, _from, initial_list) do
        [head|tail] = initial_list
        {:reply, head, tail}
    end

    def handle_call({:push, value}, _from, initial_list) do
        result_stack = [value] ++ initial_list
        {:reply, result_stack, result_stack}
    end
end