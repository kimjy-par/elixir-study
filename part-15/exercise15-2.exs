defmodule Spawn do
  def check_token do
    receive do
      {sender, token} ->
        IO.inspect [sender, token]
        send sender, {self(), "my token 2"}
    end
  end
end

pid = spawn(Spawn, :check_token, [])

send pid, {self(), "beck"}


receive do
  {sender, token} ->
    IO.inspect [sender, token]
end