defmodule Guess do
  def guess(answer, start..end_number), do: guess(answer, div(start+end_number, 2), start, end_number)
  def guess(answer, guess, start, end_number) when answer == guess, do: IO.inspect("answer is #{guess}")

  def guess(answer, guess, start, end_number) when guess > answer do
    IO.inspect("It is #{guess} #{start} #{end_number}")
    Process.sleep(1000)
    guess(answer, div(start+guess, 2), start, guess)
  end
  
  def guess(answer, guess, start, end_number) do
    IO.inspect("It is #{guess} #{start} #{end_number}")
    Process.sleep(1000)
    guess(answer, div(guess+end_number, 2), guess, end_number)
  end
end

Guess.guess(273, 1..1000)