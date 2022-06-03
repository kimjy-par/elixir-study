defmodule Spawnlink do
    import :timer, only: [sleep: 1]

    def sad_function do
      sleep 500
      raise "hello"
      exit(:boom)
    end

    def run do
      res = spawn_link(Spawnlink, :sad_function, [])
      IO.puts inspect res
      receive do
          msg ->
            IO.puts "MESSAGE RECEIVED: #{inspect msg}"
          after 1000 ->
            IO.puts "Everything happened to me"
      end
    end
end

Spawnlink.run