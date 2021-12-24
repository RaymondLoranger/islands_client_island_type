# ┌─────────────────────────────────────────────────────────────────┐
# │ Inspired by the course "Elixir for Programmers" by Dave Thomas. │
# └─────────────────────────────────────────────────────────────────┘
defmodule Islands.Client.IslandType do
  @moduledoc """
  Converts island type codes into island types in the _Game of Islands_.
  """

  alias Islands.Island

  @typedoc ~s|Island type code e.g. "a" or "d"|
  # Size of bitstring is 8 bits => 1 byte!
  @type code :: <<_::8>>
  @typedoc "Island type"
  @type t :: Island.type()

  @doc """
  Converts `island_type_code` into an island type.

  ## Examples

      iex> alias Islands.Client.IslandType
      iex> IslandType.new("a")
      :atoll
  """
  @spec new(code) :: t | {:error, atom}
  def new(island_type_code)
  def new("a"), do: :atoll
  def new("d"), do: :dot
  def new("l"), do: :l_shape
  def new("s"), do: :s_shape
  def new("q"), do: :square
  def new(_), do: {:error, :invalid_island_type_code}
end
