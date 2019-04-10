# ┌─────────────────────────────────────────────────────────────────┐
# │ Inspired by the course "Elixir for Programmers" by Dave Thomas. │
# └─────────────────────────────────────────────────────────────────┘
defmodule Islands.Client.IslandType do
  use PersistConfig

  @course_ref Application.get_env(@app, :course_ref)

  @moduledoc """
  Converts island codes to island types in the _Game of Islands_.
  \n##### #{@course_ref}
  """

  alias Islands.Island

  @spec new(String.codepoint()) :: Island.type() | {:error, atom}
  def new(island_type_code)
  def new("a"), do: :atoll
  def new("d"), do: :dot
  def new("l"), do: :l_shape
  def new("s"), do: :s_shape
  def new("q"), do: :square
  def new(_), do: {:error, :invalid_island_type_code}
end
