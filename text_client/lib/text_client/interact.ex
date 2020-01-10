defmodule TextClient.Interact do
  alias TextClient.Player
  alias TextClient.State

  def start() do
    Hangman.new_game()
    |> setup_state()
    |> Player.play()
  end

  def setup_state(game) do
    IO.inspect(game)
    %State{
      game_service: game,
      tally: Hangman.tally(game)
    }
  end
end
