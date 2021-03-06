defmodule Islands.Client.IslandTypeTest do
  use ExUnit.Case, async: true

  alias Islands.Client.IslandType

  doctest IslandType

  describe "IslandType.new/1" do
    test "returns an island type given a valid island code" do
      assert IslandType.new("a") == :atoll
    end

    test "returns an error given an invalid island code" do
      assert IslandType.new('a') == {:error, :invalid_island_type_code}
    end
  end
end
