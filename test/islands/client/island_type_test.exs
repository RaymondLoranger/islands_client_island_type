defmodule Islands.Client.IslandTypeTest do
  use ExUnit.Case, async: true

  alias Islands.Client.IslandType

  doctest IslandType

  describe "IslandType.new/1" do
    test "returns an island type given a valid island type code" do
      assert IslandType.new("a") == :atoll
    end

    test "returns an error tuple given an invalid island type code" do
      assert IslandType.new('a') == {:error, :invalid_island_type_code}
    end
  end
end
