defmodule Rand64 do
  @moduledoc """
  Documentation for `Rand64`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Rand64.hello()
      :world

  """
  def hello do
    :world
  end
  def rand64 do
  	:crypto.strong_rand_bytes(64) |> Base.encode64
  end
end
