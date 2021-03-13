defmodule ListLengthTest do
  use ExUnit.Case

  describe "call/1" do
    test "count empty list" do
      # condition
      list = []

      # action
      count = ListLength.call(list)

      # verify
      assert count == 0
    end

    test "count list with one element" do
      # condition
      list = [10]

      # action
      count = ListLength.call(list)

      # verify
      assert count == 1
    end

    test "count list with many elements" do
      # condition
      list = [2, 3, 6, 7]

      # action
      count = ListLength.call(list)

      # verify
      assert count == 4
    end
  end
end
