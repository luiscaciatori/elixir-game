defmodule Hangman do
  alias Hangman.Game

  defdelegate new_game(), to: Game
  defdelegate tally(game), to: Game

  def make_move(game, guess) do
    new_game = Game.make_move(game, guess)
    {new_game, tally(new_game)}
  end
end
