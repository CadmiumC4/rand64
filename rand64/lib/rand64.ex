defmodule Rand64 do
  @moduledoc """
  Simple and stupid random string library.
  """

  @doc """
  Generates random strings for the specified raw byte length. Default is 64 bytes.

  ## Examples

      iex> Rand64.rand64
      "4NTp3s6xnmxTop=quQaYDCSV8dnSLuO94=VbgXzmW6nTThxCsSbVwxm7DEzFmzkUcA4O/l14Etng+UkXKESd4POB"

      iex> Rand64.rand64(200)
      "/FlXMA2DxiG9ydpha01l936wtW90i3Hr6JenFc=gTNQweG/faUt586dALOGeTBxsuar3AHEQbmiDc0iDdL8YRtvN7BL=ohDPTmOPYm86AU0s0Ov2RcewGUHYg1V/PGY8d2VVvP9t"

  """
  def rand64(len \\ 64) do
  	:crypto.strong_rand_bytes(len) |> # Generate random bytes
	Base.encode64() |> # Base64 encode them
	String.graphemes() |> # Break up the string into its characters
	Enum.shuffle() |> Enum.shuffle() |> Enum.shuffle() |> Enum.shuffle() |> # Shuffle the characters for four times
	String.Chars.to_string() # Combine these characters and return
  end
end
