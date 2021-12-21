# ┌─────────────────────────────────────────────────────────────────┐
# │ Inspired by the course "Elixir for Programmers" by Dave Thomas. │
# └─────────────────────────────────────────────────────────────────┘
defmodule Islands.Client.IslandType do
  @moduledoc """
  Converts island type codes into island types in the _Game of Islands_.
  """

  alias Islands.Island

  @doc """
  Converts an island code into an island type.

  ## Examples

      iex> alias Islands.Client.IslandType
      iex> IslandType.new("a")
      :atoll
  """
  @spec new(String.codepoint()) :: Island.type() | {:error, atom}
  def new(island_type_code)
  def new("a"), do: :atoll
  def new("d"), do: :dot
  def new("l"), do: :l_shape
  def new("s"), do: :s_shape
  def new("q"), do: :square
  def new(_), do: {:error, :invalid_island_type_code}
end
